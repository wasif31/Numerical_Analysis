
function ret =new (f,f1,a,b)
  ret(1,:)=[a b 0 0];
  x=(a+b)/2;
  for i=2:20
    x=x-(f(x)/f1(x));
    ret(i,:)=[a b x f(x)];
    if(abs(ret(i-1,3)-x)<0.00001)
    break;
    endif
endfor
endfunction
