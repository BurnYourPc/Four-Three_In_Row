function [t,col]=CouldWin(A,who,DR,DL)
t=false;
b=Av4Play(A);
col=0;
for i=1:length(b)
    T=PlayIt(A,b(i),who);
    if IsAWin(T,DR,DL)
        t=true;
        col=b(i);
        return
    end
end
end