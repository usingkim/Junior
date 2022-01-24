def product(m1, m2):
    row1 = len(m1)
    col1 = len(m1[0])

    row2 = len(m2)
    col2 = len(m2[0])

    if col1 != row2 or col2 != row1:
        return -1

    ## row1 X col2의 사이즈
    result = [[0]*row1 for i in range(col2)]

    for i in range(row1):
        for j in range(col2):
            for k in range(col1):
                result[i][j] += m1[i][k] * m2[k][j]
    return result

matrix1 = [[1,2,3], [4,5,6]]
matrix2 = [[1,2],[3,4],[5,6]]

m = product(matrix1, matrix2)

print(m)
