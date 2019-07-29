%function declaration 
f = @(x) x^2;
str = ['The given function is: x^2'];
disp(str);

a = input('1st point of the input interval: ');
b = input('2nd point of the input interval: ');
n = input('position of fibanacci number n: ');

%generating fibanacci numbers
fib = ones(n,1);
for i=3:n
    fib(i,1) = fib(i-1,1) + fib(i-2,1);
end

for i=1:n-2
    x1 = (fib(n-i-1,1)/fib(n-i+1,1))*(b - a) + a;
    x2 = (fib(n-i,1)/fib(n-i+1,1))*(b - a) + a;
    if (f(x2) > f(x1)) 
         b = x2;         
    else
         a = x1;         
    end
    
    str = ['New interval: [',num2str(a),' <-> ',num2str(b),']'];
    disp(str);
    
end

str = ['Approximate solution = ',num2str((a+b)/2)];
disp(str);

