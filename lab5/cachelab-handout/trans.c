/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
 // Karuma
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
void transpose_submit(int M, int N, int A[N][M], int B[M][N]);
void trans_32x32(int M, int N, int A[N][M], int B[M][N]);
void trans_64x64(int M, int N, int A[N][M], int B[M][N]);
void trans_60x68(int M, int N, int A[N][M], int B[M][N]);
void trans(int M, int N, int A[N][M], int B[M][N]);


/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    /* 
     * s = 5, E = 1, b = 5
     * 有2^5=32组高速缓存，每组有1个块，每个块有2^5 = 32字节，因此总共有32*32=1024字节的缓存，能够装下256个int型数据.
     */ 
    if(M == 32 && N == 32){
        trans_32x32(M, N, A, B);
    } else if (M == 64 && N == 64) {
        trans_64x64(M, N, A, B);
    } else if (M == 60 && N == 68) {
        trans_60x68(M, N, A, B);
    } else {
        trans(M, N, A, B);  // 默认情况
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 
void trans_32x32(int M, int N, int A[N][M], int B[M][N]){
    /*
     * 对于32*32的矩阵，缓存一次能存储8行数据，因此考虑8*8分块，连续读入8个元素
     * misses为288
     */
    int i, j, k;
    int tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    for(i = 0; i < N; i += 8){
        for(j = 0; j < M; j +=8){
            for(k = 0; k < 8 ; k++){
                tmp0 = A[i + k][j];
                tmp1 = A[i + k][j + 1];
                tmp2 = A[i + k][j + 2];
                tmp3 = A[i + k][j + 3];
                tmp4 = A[i + k][j + 4];
                tmp5 = A[i + k][j + 5];
                tmp6 = A[i + k][j + 6];
                tmp7 = A[i + k][j + 7];
                B[j][i + k] = tmp0;
                B[j + 1][i + k] = tmp1;
                B[j + 2][i + k] = tmp2;
                B[j + 3][i + k] = tmp3;
                B[j + 4][i + k] = tmp4;
                B[j + 5][i + k] = tmp5;
                B[j + 6][i + k] = tmp6;
                B[j + 7][i + k] = tmp7;
            }
        }
    }
}

void trans_64x64(int M, int N, int A[N][M], int B[M][N]){
    /*
     * 对于64*64的矩阵，缓存一次能存储4行数据，因此考虑4*4分块，连续读入4个元素
     * int i, j, k;
     * int tmp0, tmp1, tmp2, tmp3;
     * for(i = 0; i < N; i += 4){
     *   for(j = 0; j < M; j +=4){
     *        for(k = 0; k < 4 ; k++){
     *            tmp0 = A[i + k][j];
     *            tmp1 = A[i + k][j + 1];
     *            tmp2 = A[i + k][j + 2];
     *            tmp3 = A[i + k][j + 3];
     *            B[j][i + k] = tmp0;
     *            B[j + 1][i + k] = tmp1;
     *            B[j + 2][i + k] = tmp2;
     *            B[j + 3][i + k] = tmp3;
     *        }
     *    }
     * }
     * misses为1700，考虑优化方法
     * 由于在写入的时候B矩阵的4行已经被读入缓存，因此可以借用B矩阵已经读入缓存的元素暂存需要转置的元素
     * misses为1180
     */
    int i, j, k;
    int tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    // 考虑8*8分块，将8*8分块拆成4个4*4分块考虑
    for(i = 0; i < N; i += 8){
        for(j = 0; j < M; j +=8){
            // 将A矩阵4行的前8个元素存储到B矩阵4行中（左上角和右上角）
            for(k = 0; k < 4; k++){
                tmp0 = A[i + k][j];
                tmp1 = A[i + k][j + 1];
                tmp2 = A[i + k][j + 2];
                tmp3 = A[i + k][j + 3];
                tmp4 = A[i + k][j + 4];
                tmp5 = A[i + k][j + 5];
                tmp6 = A[i + k][j + 6];
                tmp7 = A[i + k][j + 7];
                B[j][i + k] = tmp0;
                B[j + 1][i + k] = tmp1;
                B[j + 2][i + k] = tmp2;
                B[j + 3][i + k] = tmp3;
                B[j][i + k + 4] = tmp4;
                B[j + 1][i + k + 4] = tmp5;
                B[j + 2][i + k + 4] = tmp6;
                B[j + 3][i + k + 4] = tmp7;
            }
            // 将A的左下角元素转置放入B的右上角，并且将B右上角暂存的元素移入本应该在的左下角
            for(k = 0; k < 4; k++){
                tmp0 = A[i + 4][j + k];
                tmp1 = A[i + 5][j + k];
                tmp2 = A[i + 6][j + k];
                tmp3 = A[i + 7][j + k];
                tmp4 = B[j + k][i + 4];
                tmp5 = B[j + k][i + 5];
                tmp6 = B[j + k][i + 6];
                tmp7 = B[j + k][i + 7];
                B[j + k][i + 4] = tmp0;
                B[j + k][i + 5] = tmp1;
                B[j + k][i + 6] = tmp2;
                B[j + k][i + 7] = tmp3;
                B[j + k + 4][i] = tmp4;
                B[j + k + 4][i + 1] = tmp5;
                B[j + k + 4][i + 2] = tmp6;
                B[j + k + 4][i + 3] = tmp7;
            }
            // 将A的右下角元素转置放入B的右下角
            for(k = 0; k < 4; k++){
                tmp0 = A[i + k + 4][j + 4];
                tmp1 = A[i + k + 4][j + 5];
                tmp2 = A[i + k + 4][j + 6];
                tmp3 = A[i + k + 4][j + 7];
                B[j + 4][i + k + 4] = tmp0;
                B[j + 5][i + k + 4] = tmp1;
                B[j + 6][i + k + 4] = tmp2;
                B[j + 7][i + k + 4] = tmp3;
            }
        }
    }
}

void trans_60x68(int M, int N, int A[N][M], int B[M][N]){
    /*
     * 直接将60*68矩阵拆分成若干8*8分块和4*4分块进行转置
     * misses为1617, 考虑优化, 对分块使用和64*64转置中类似的处理策略, 即总是先将A的块完整不转置地复制到B, 
     * 此时B的对应行已经加载到缓存中, 再对B对应区块进行转置, 可以减少不命中次数
     */
    int i, j, k, l;
    int tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    // 56*64的部分考虑8*8分块，将8*8分块拆成4个4*4分块考虑
    for(i = 0; i < 64; i += 8){
        for(j = 0; j < 56; j +=8){
            // 将A矩阵4行的前8个元素存储到B矩阵4行中（左上角和右上角）
            for(k = 0; k < 4; k++){
                tmp0 = A[i + k][j];
                tmp1 = A[i + k][j + 1];
                tmp2 = A[i + k][j + 2];
                tmp3 = A[i + k][j + 3];
                tmp4 = A[i + k][j + 4];
                tmp5 = A[i + k][j + 5];
                tmp6 = A[i + k][j + 6];
                tmp7 = A[i + k][j + 7];
                B[j][i + k] = tmp0;
                B[j + 1][i + k] = tmp1;
                B[j + 2][i + k] = tmp2;
                B[j + 3][i + k] = tmp3;
                B[j][i + k + 4] = tmp4;
                B[j + 1][i + k + 4] = tmp5;
                B[j + 2][i + k + 4] = tmp6;
                B[j + 3][i + k + 4] = tmp7;
            }
            // 将A的左下角元素转置放入B的右上角，并且将B右上角暂存的元素移入本应该在的左下角
            for(k = 0; k < 4; k++){
                tmp0 = A[i + 4][j + k];
                tmp1 = A[i + 5][j + k];
                tmp2 = A[i + 6][j + k];
                tmp3 = A[i + 7][j + k];
                tmp4 = B[j + k][i + 4];
                tmp5 = B[j + k][i + 5];
                tmp6 = B[j + k][i + 6];
                tmp7 = B[j + k][i + 7];
                B[j + k][i + 4] = tmp0;
                B[j + k][i + 5] = tmp1;
                B[j + k][i + 6] = tmp2;
                B[j + k][i + 7] = tmp3;
                B[j + k + 4][i] = tmp4;
                B[j + k + 4][i + 1] = tmp5;
                B[j + k + 4][i + 2] = tmp6;
                B[j + k + 4][i + 3] = tmp7;
            }
            // 将A的右下角元素复制放入B的右下角
            for(k = 0; k < 4; k++){
                tmp0 = A[i + k + 4][j + 4];
                tmp1 = A[i + k + 4][j + 5];
                tmp2 = A[i + k + 4][j + 6];
                tmp3 = A[i + k + 4][j + 7];
                B[j + k + 4][i + 4] = tmp0;
                B[j + k + 4][i + 5] = tmp1;
                B[j + k + 4][i + 6] = tmp2;
                B[j + k + 4][i + 7] = tmp3;
            }
            // 转置
            for(k = 0; k < 4; k++){
                for(l = 0; l < k; l++){
                    tmp0 = B[j + k + 4][i + 4 + l];
                    B[j + k + 4][i + 4 + l] = B[j + l + 4][i + 4 + k];
                    B[j + l + 4][i + 4 + k] = tmp0;
                }
            }
        }
    }
    // 剩下的拆分成4*4小块考虑, 采用先复制再转置方法
    for(i = 0; i < N; i += 4){
       for(j = 56; j < M; j +=4){
            for(k = 0; k < 4 ; k++){
                tmp0 = A[i + k][j];
                tmp1 = A[i + k][j + 1];
                tmp2 = A[i + k][j + 2];
                tmp3 = A[i + k][j + 3];
                B[j + k][i] = tmp0;
                B[j + k][i + 1] = tmp1;
                B[j + k][i + 2] = tmp2;
                B[j + k][i + 3] = tmp3;
            }
            // 转置
            for(k = 0; k < 4 ; k++){
                for(l = 0; l < k; l++){
                    tmp0 = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = tmp0;
                }
            }
        }
    }
    for(i = 64; i < N; i += 4){
       for(j = 0; j < 56; j +=4){
            for(k = 0; k < 4 ; k++){
                tmp0 = A[i + k][j];
                tmp1 = A[i + k][j + 1];
                tmp2 = A[i + k][j + 2];
                tmp3 = A[i + k][j + 3];
                B[j + k][i] = tmp0;
                B[j + k][i + 1] = tmp1;
                B[j + k][i + 2] = tmp2;
                B[j + k][i + 3] = tmp3;
            }
            // 转置
            for(k = 0; k < 4 ; k++){
                for(l = 0; l < k; l++){
                    tmp0 = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = tmp0;
                }
            }
        }
    }
}

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

