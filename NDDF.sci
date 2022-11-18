function NDDF()
    n = input("Enter number of points");
    x0= input("Enter the value of x at which we want value of y");
    x=zeros(n);
    y=zeros(n,n);
    for i=1:n
        printf("Enter the value of x%d=",i);
        x(i)=input("");
        printf("Enter the values of y%d=",i);
        y(i,1)=input("");
    end
    for j=2:n
        for i=1:n-j+1
            y(i,j)=(y(i+1,j-1)-y(i,j-1))/(x(i+1+j-2)-x(i));
    end
end
disp(y);
z=y(1,1);
for i=2:n
    a=1;
    for j=1:i-1;
        a=a*(x0-x(j));
        
    end
    a=a*y(1,i);
    z=z+a;
end
printf("The value of y at x=%g using NDDF IS %g",x0,z);   
endfunction
