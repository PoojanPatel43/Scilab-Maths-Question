function diffB()
    n=input("Enter Number of Points");
    Y=zeros(n,n);
    for i=1:n
        printf("Enter values of y%d",i);
        Y(i,1)=input("");
    end
    for j=2:n
        for i=j:n
            Y(i,j)=Y(i,j-1)-Y(i-1,j-1);
            end
    end
    disp(Y);
    
endfunction
