A=input('enter the matrix whose svd has to be find:');

f=(A')*A;%multiplication of transpose of matrix itself

[d]=eig(f);%finding the eigen values of f.
[v e]=eig(f);%finding the matrix v such that each column is eigen vector corresponding to eigen values
p=v;%storing each element of v in p
count=1;
w=sort(d,'descend');%sorting the vector d containing eigen values in descending order
  for i=1:length(d) %generating right singular matrix of im
    for j=1:length(d)
        if(w(i)==d(j))
           t=j;
            p(:,count)=v(:,t);%generating p matrix in which each column is eigen vector corresponding to the sorted d .
            count=count+1;
        end
    end
  end
 b=diag(w); %diagonalising the sorted w   
 D=e^0.5;%taking square root of b or making singular vectors
% for a=1:256 %generating the left singular matrix of im
%     for n=1:256
%         u(n,a)=(im(n,:)*p(:,a))/D(a,a);
%     end
% end
% x=u*D*p';%reconstructing the image using svd
U=A*v*pinv(D)
%disp(u)% displaying left singular matrix
disp(D)%displaying singular vector matrix
disp(p)%displaying right singular matrix
%disp(x)%showing the image


          









