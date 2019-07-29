A = [6 -4; -4 4];
[na , ma ] = size (A);
disp('given matrix');
disp(A);

b =[-4; 0];
disp('given vector');
disp(b);

x =[0; 0];
disp('initial value');
disp(x);

%tol = input ( 'Enter the error allowed in final answer:  ');
tol = 0.005;

r = b - A*x;
p = r;

while(1)
   alpha = (r.' * r) / (p.' * A * p);
   x = x + alpha*p;
   r_n = r - alpha*A*p;
   
   if abs(r_n) <= tol
       break;
   end
   
   beta = (r_n.' * r_n) / (r.' * r);
   p = r_n + beta * p;
   r = r_n;
   
end

disp('solution:');
disp(x);
