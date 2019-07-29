%function declaration 
f = @(x) x^2;
str = ['The given function is: x^2'];
disp(str);

g_ratio = 0.618;
a = input('1st point of the input interval: ');
b = input('2nd point of the input interval: ');
epsilon = input('precision or tolerance: ');

x1 = b - g_ratio*(b -a);
x2 = a + g_ratio*(b -a);

change = true;
while( (b-a) > epsilon )
    
    if (f(x2) > f(x1)) 
         b = x2;
         x2 = x1;
         x1 = b - g_ratio*(b -a);
    else
         a = x1;
         x1 = x2;
         x2 = a + g_ratio*(b -a);
    end
    
    str = ['New interval: [',num2str(a),' <-> ',num2str(b),']'];
    disp(str);    
    
end

str = ['Approximate solution = ',num2str((a+b)/2)];
disp(str);
