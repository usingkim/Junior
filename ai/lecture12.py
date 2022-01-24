import numpy as np

a = np.array([1,2,3,4,5], ndmin=3)
b = np.arange(5)
c = np.arange(3,9,2)
d = np.eye(3,4)
e = np.eye(3)
f = np.linspace(10,21,5)

print(a, b, c, d, e, f)

a = np.arange(6)
print(a)
b = a.reshape(3,2)
print(b)
print(b[2,1])
print(b[:,1])
print(np.shape(b))
print(np.size(b))
print(np.ndim(b))



a = np.array([[1,2], [3,4]])
b = np.array([[11,12], [13,14]])

print(a+b)
print(a*b)
print(np.dot(a,b))
print(np.inner(a,b))

a = np.array([[3,7,5], [8,4,3], [2,4,9]])
print(np.amin(a, 1))
print(np.amin(a, 0))

print(np.random.rand(3,2))

print(np.random.randint(5, size=(2, 4)))