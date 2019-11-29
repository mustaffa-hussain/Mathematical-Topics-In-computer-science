%'AugM' is augmented matrix
AugM = [1 10 -1 3; 2 3 20 7; 10 -1 2 4];
% Gauss-Jordan method
[m,n]=size(AugM);
for j=1:m-1
	r = j;
	max = AugM(j,j);
    for z=2:m
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

for j=m:-1:2
    for i=j-1:-1:1
        AugM(i,:)=AugM(i,:)-AugM(j,:)*(AugM(i,j)/AugM(j,j));
    end
end

Soln=zeros(1,m);
for s=1:m
    AugM(s,:)=AugM(s,:)/AugM(s,s);
    Soln(s)=AugM(s,n);
end
disp('[I | Soln] matrix:');
disp(AugM);
disp('Solution:');
disp(Soln);