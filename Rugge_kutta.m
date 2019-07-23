
  function ret = kutta(f,xrange,y0,h )

x=xrange(1):h:xrange(2);
y=zeros(1,length(x));
y(1) = y0;

for i=1:(length(x)-1)
k1 = f(x(i),y(i));
k2 = f(x(i)+.5*h,y(i)+.5*h*k1);
k3 = f(x(i)+.5*h,y(i)+.5*h*k2);
k4 = f(x(i)+h,y(i)+h*k3);

y(i+1) = y(i)+(1/6)*h*(k1 + 2*k2 + 2*k3 + k4);
end

ret = [x' y'];

end

endfunction
