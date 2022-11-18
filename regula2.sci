//Name: Poojan G Patel
//Roll No: 241
//Div: A


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

//
OUTPUT
-> exec('D:\scilab-6.1.0\regula2.sci', -1)

--> regulafalsi
Enter value of a 1

Enter value of b 2

Enter Number of iterations 15

Enter value of epsilon 0.0001


   1.0233600

   1.0358414

   1.0424705

   1.0459802

   1.0478351

   1.0488146

   1.0493315

   1.0496043

   1.0497482

   1.0498241

   1.0498642

   1.0498853

   1.0498965

   1.0499023

   1.0499054
The solution using Regula Falsi Method is 1.04991 and iteration 16
