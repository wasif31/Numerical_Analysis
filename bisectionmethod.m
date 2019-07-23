

function ret = bisec (f,a,b)
  ret(1,:)=[a b 0 0];
  if f(a)*f(b)>0
    return;
    endif
  for i=2:20
    x=(a+b)/2;
    ret(i,:)=[a b x f(x)];
    if(abs(ret(i-1,3)-x)<0.00001)
    break;
    endif
    if f(x)*f(a)<0
    b=x;
    elseif f(x)*f(b)<0
    a=x;
  endif
  endfor

endfunction
