%'AugM' is augmented matrix
AugM = [ 2 1 1 -2 -10; 4 0 2 1 8; 3 2 2 0 7; 1 3 2 -1 -5];

[m,n]=size(AugM);
%partial pivoting
for j=1:m-1
	r = j;
	max = AugM(j,j);
    for z=j+1:m
        if max < AugM(z,j)
			max = AugM(z,j);
			r = z;            
        end
    end
	if r ~= j
		t=AugM(j,:);
        AugM(j,:)=AugM(r,:);
        AugM(r,:)=t;
	end
    for i=j+1:m
        AugM(i,:)=AugM(i,:)-AugM(j,:)*(AugM(i,j)/AugM(j,j));
    end
end
%backward substituition
Soln=zeros(1,m);
for s=m:-1:1
    Sub=0;
    for k=n-1:-1:s+1
        Sub=Sub+AugM(s,k)*Soln(k);
    end
    Soln(s)=(AugM(s,n)-Sub)/AugM(s,s);
end
disp('Upper Triangular form of Augmented Matrix:');
disp(AugM);
disp('Solution:');
disp(Soln);