
function ret = GJ (A,B)
  [m,n]=size(A);
  for i=1:m
    diag(i)=A(i,i);
    rest(i,:)=[A(i,1:i-1) A(i,i+1:n)];
    rowsum=sum(abs(rest(i,:)));
    if(abs(diag(i)<rowsum))
    ret='not found';
    return
  endif
endfor
X=zeros(1,n);
ret(1,:)=X;
for i=2:20
 for j=1:n
  xrest=[X(1:j-1) X(j+1:n)];
   ret(i,j)=(B(j)-rest(j,:)*xrest')/diag(j);
 % X(j)=(B(j)-rest(j,:)*xrest')/diag(j);
   if abs(X(1)-ret(i,1))<0.0001
        ret(i,:)=X;
        endif
endfor
X=ret(i,:);
endfor
endfunction
