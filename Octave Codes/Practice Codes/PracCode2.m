A = [1 2; 4 5; 6 7]
B = [54 67; 78 90; 23 12]
C = [12 2; 34 87]

A*C
A.*B
A.^2
1 ./A
log(A)
exp(A)
abs(A)

abs([-1; 2; -3])
-A 
A + ones(length(A),1)
A +2
A'
val = max(A)
val<7

find(val<7)
m = magic(4)
[r,c] = find(m >=10)

sum(A)
ceil(A)
rand(3)
max(rand(3), rand(3))
max(A,[],1)
max(A,[],2)
max(A)

A = magic(9)
eye(9)
A .* eye(9)


sum(sum(A .* eye(9)))

inv = pinv(A)