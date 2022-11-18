function NGFIF()
    n=input("Enter Number of Points");
    x0=input("Enter initisl value of x");
    h=input("Enter the length of subinterval");
    x=input("Enter value of x at which we want to calculate y");
    Y=zeros(n,n);
    for i=1:n
        printf("Enter values of y%d",i);
        Y(i,1)=input("");
    end
    for j=2:n
        for i=1:n-(j-1)
            Y(i,j)=Y(i+1,j-1)-Y(i,j-1);
            end
    end
    disp(Y);
    u=(x-x0)/h;
    z=Y(1,1);
    for i=2:n
        a=1
        for j= 1:i-1
            a=a*(u+1-j);
        end
        a=a*Y(1,i)/factorial(i-1);
        z=z+a;
    end
    printf("The values of Y at x=%g using NGFIF IS %g",x,z);
    
endfunction
