function RK4()
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
    i=1;
    printf('The solution using RK Method of oreder 4 is: \n');
    while n>0
        k1=h*f(x(i),y(i));
        k2=h*f(x(i)+h/2,y(i)+k1/2);
        k3=h*f(x(i)+h/2,y(i)+k2/2);
        k4=h*f(x(i)+h,y(i)+k3);
        k=(k1+2*k2+2*k3+k4)/6;
        y(i+1)=y(i)+k;
        x(i+1)=x(i)+h;
        printf('y(%g)=%f \n',x(i+1),y(i+1));
        n=n-1;
        i=i+1;
    end
endfunction
