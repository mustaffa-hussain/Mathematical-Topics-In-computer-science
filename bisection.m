f = @(x) x^2 - 3;
disp('Given Function: ');
disp(f);
a = 0;
b = 4;
str = ['Initial interval: [',num2str(a),' , ',num2str(b),']'];
disp(str);
epsilon = 0.0001;
str = ['Tolerance: ',num2str(epsilon)];
disp(str);
i = 0;
while( (b-a) > epsilon )
    m = (a+b)/2;
    y_m = f(m); % y_m = f(m)
    y_a = f(a); % y_a = f(a)
    if (y_m > 0 && y_a < 0) || (y_m < 0 && y_a > 0) 
         b = m;
    else
         a = m;
    end
    i = i + 1;
    str = ['Iteration no.=',num2str(i),' ','Interval: [',num2str(a),' , ',num2str(b),']'];
    disp(str);
end
str = ['solution = ',num2str((a+b)/2)];
disp(str);