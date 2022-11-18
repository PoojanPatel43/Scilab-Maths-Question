function LIF()
      n=input("Enter how many points:");
      x=input("Enter the value of x for which we want to calculate y");
      X=zeros(1,n);
      Y=zeros(1,n);
      for i=1:n
          printf("Enter values of x(%d) and y(%d)",i,i);
          X(i)=input("");
          Y(i)=input("");
 end
      disp(X);
      disp(Y);
 z=0;
     for i=1:n
 a=1;
          for j=1:n
              if(i<>j) then
              a=(a*(x-X(j)))/(X(i)-X(j));
 end
 end
          a=a*Y(i);
 z=z+a
 end
      printf("Final Solution=%d",z);
  endfunction
