function NGBIF()
      n=input("Enter number of points:");
      xn=input("Enter last point xn:");
      h=input("Enter length of subinterval:");
      x=input("Enter value of x at which we want to calculate y:");
      y=zeros(n,n);
      for i=1:n
          printf("Enter the value of y%d:",i);
         y(i,1)=input("");
      end
      for j=2:n
         for i= j:n
              y(i,j)=y(i,j-1)-y(i-1,j-1);
         end
     end
      disp(y);
      u=(x-xn)/h;
      z=y(n,1);
      for i=2:n
          a=1;
         for j=1:i-1
             a=a*(u+j-1);
         end
          a=a*y(n,i)/factorial(i-1);
          z=z+a;
     end
      printf("the value of y at x=%g is =%g by NGBIF",x,z);
  endfunction
