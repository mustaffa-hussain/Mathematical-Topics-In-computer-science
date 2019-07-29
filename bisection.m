f = @(x) x^2 - 3;
a = 0;
b = 4;
epsilon = 0.0001;
while( (b-a) > epsilon )
    m = (a+b)/2;
    y_m = f(m); % y_m = f(m)
    y_a = f(a); % y_a = f(a)
    if (y_m > 0 && y_a < 0) || (y_m < 0 && y_a > 0) 
         b = m;
    else
         a = m;
    end
    
    str = ['New interval: [',num2str(a),'--',num2str(b),']'];
    disp(str);
end
str = ['Approximate solution = ',num2str((a+b)/2)];
disp(str);