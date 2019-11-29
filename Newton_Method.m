%syms x
%y = diff(f)
%vpa(subs(y,x,5))
f = @(x) x^2 - 4*x - 7;
fd = @(x) 2*x - 4;
disp('Given Function: ');
disp(f);
xp = 0;
xn = 5;
str = ['Initial velues: [',num2str(xp),' , ',num2str(xn),']'];
disp(str);
epsilon = 0.0001;
str = ['Tolerance: ',num2str(epsilon)];
disp(str);
i = 0;
while( abs(xn - xp) > epsilon )
    xp = xn;
    %nu = f(xp); % y_m = f(m)
    %de = fd(xp); % y_a = f(a)
    xn = xp - f(xp) / fd(xp);
    
    i = i + 1;
    str = ['Iteration no.=',num2str(i),' ','Interval: [',num2str(xp),' , ',num2str(xn),']'];
    disp(str);
end
str = ['solution = ',num2str(xn)];
disp(str);


