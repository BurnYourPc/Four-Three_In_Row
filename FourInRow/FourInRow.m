function FourInRow
A=zeros(6,7);
a=zeros(6,7); b=zeros(6,7);
d='What is your move (column)?\n';
who=2;
for i=1:6
    for j=1:7
        a(i,j)=i+j; b(i,j)=i-j;
    end
end
while 1
    y=What4Play(A,who,0,a,b);
    A=PlayIt(A,y,who);
    %A
    PrintCell(A);
    who=mod(who,2)+1;
    if IsAWin(A,a,b)
        fprintf('Win for %d\n',who);
        break
    end
    x=input(d);
    if x==15
        break
    end
    A=PlayIt(A,x,who);
    PrintCell(A);
    if IsAWin(A,a,b)
        fprintf('Win for %d\n',who);
        break
    end
    who=mod(who,2)+1;
    
    
    
    %[where,double]=FindThreats(A,who,a,b)
    
end
end