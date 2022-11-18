function NRMethod()
    deff('y=f(x)','y=x*sin(x)+cos(x)');
    deff('y=fd(x)','y=x*cos(x)');
    x0=input("Enter initial Approximation:");
    n=input("Enter number of iteration:");
    eps=input("Enter value of epsilon");
    k=1;
    while(abs(f(x0))>eps & k<=n)
        x1=x0-(f(x0)/fd(x0));
        k=k+1;
        x0=x1;
        if(abs(f(x0))>10000)
            printf("Solution diverges at iteration %d",k);
            abort;
        end
        disp(x0);
    end
    if(f(x0)<eps)
        printf("The solution using Newton Rapson Method is %g and the value of iteration is %d",x0,k);
    else
        printf("No convergence after %d iteration",k);
    end
endfunction
