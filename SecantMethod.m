f = @(x) x^2 - 612;
disp('Given Function: ');
disp(f);

x0 = 10;
x1 = 30;
str = ['Initial values[x0 , x1]: [',num2str(x0),' , ',num2str(x1),']'];
disp(str);

y0=f(x0); 
y1=f(x1);


epsilon = 0.01;
str = ['Tolerance: ',num2str(epsilon)];
disp(str);
condition = true;
while (condition)
    x = x1-y1*(x1-x0)/(y1-y0);
    y = f(x);
    x0 = x1; 
    x1 = x;
    y0 = y1;
    y1 = y;
    if abs(y1) < epsilon 
         condition = false;
    end
end
str = ['solution = ',num2str(x)];
disp(str);