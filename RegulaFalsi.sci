function regulafalsi ()
    deff('y=f(x)','y=x*%e^x-3');
    a=input("Enter value of a");
    b=input("Enter value of b");
    n=input("Enter Number of iterations");
    eps=input("Enter value of epsilon");
    for k=1:n
        c=(a*f(b)-b*f(a))/(f(b)-f(a));
        if(f(a)*f(c)<0)
            b=c;
        elseif(f(b)*f(c)<0)
            a=c;
        end
        k=k+1;
        disp(c)
    end
    if(f(c)<abs(eps))
        printf("The solution using Regula Falsi Method is %g and iteration %d",c,k);
    else
        printf("No convergence after %d iteration");
        end
endfunction
