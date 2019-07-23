

function ret=newton(f,a,b)
ff = inline;
di=inline(diff(sym(f)));

xprev=(a+b)/2;
ret(1,:)=[xprev ff(xprev)];
    for i=2:20
        x=xprev-(ff(xprev)/di(xprev));

        ret(i,:)=[x ff(x)];
        if abs(xprev-x)^-4 && ff(x)~=0
            break;
        endif
        xprev=x;
    endfor
endfunction