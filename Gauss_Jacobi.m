%the system of equation should be "Diagonally Dominant"
A = [-4 1 -1; 3 -6 2; 1 -3 7];
b = [-8; 23; 17];
x = [0; 0; 0];%initial values

n=size(x,1);
err=Inf; 
epsilon=0.0005; % Tolerence for method
itr=0;

while err>epsilon
    x_old=x;    
    for i=1:n
        offset=0;        
        for j=1:n            
            if j~=i
                offset=offset+A(i,j)*x_old(j);
            end            
        end        
        x(i)=(1/A(i,i))*(b(i)-offset);
    end
    
    itr=itr+1;
    err=abs(x_old-x);
end
fprintf('Solution after %d iterations\n',itr);
disp(x);