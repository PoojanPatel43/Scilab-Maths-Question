function Eulers()
    deff('z=f(x,y)','z=1+x*y');
    x0=input("Enter value of x0:");
    y0=input("Enter value of y0:");
    h=input("Enter value of h:");
    xn=input("Enter valuenof xn:");
    n=(xn-x0)/h;
    y=zeros(1:n+1);
    x=zeros(1:n+1);
    x(1)=x0;
    y(1)=y0;
    for i=1:n+1
        x(i+1)=x(i)+h;
        y(i+1)=y(i)+h*f(x(i),y(i));
        printf("x(%d),y(%d)= (%g , %g)",i,i,x(i),y(i));
    end
    printf("\n Vlaue of y at x=%g is %g",x(n+1),y(n+1));
    endfunction
