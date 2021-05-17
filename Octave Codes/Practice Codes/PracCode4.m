v = zeros(10,1)
for i=1:10,
  v(i) = 2^i;
end;

v

indices = 1:10;
for i=indices,
  disp(i);
end;

i = 1;
while i<=5,
  v(i)  = 100;
  i = i+1;
end;

v

i=1;
while true,
  v(i) = 999;
  i = i+1;
  if i == 6,
    break;
  endif;
end;

v

v(1) = 100;
if v(1) == 10,
  disp('Hello');
elseif v(1)==102,
  disp('GG');
else
  disp('GLHF');
endif;
  
squareThisnumber(5)
[a,b] = squareAndCubeThisnumber(6)

x = [1 1; 1 2; 1 3]
y = [1;2;3]

theta = [0;1]
J = costFunction(x,y,theta)

theta = [0;0];

(1^2 + 2^2 + 3^2)/ (2*3)

J