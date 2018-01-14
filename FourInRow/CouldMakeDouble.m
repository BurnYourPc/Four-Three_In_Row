function [t,col]=CouldMakeDouble(A,who,DR,DL)
t=false;
b=Av4Play(A); col=0;
for i=1:length(b)
    T=PlayIt(A,b(i),who);
    [~,double]=FindThreats(T,who,DR,DL);
    if (double && ~CouldWin(T,mod(who,2)+1,DR,DL))
        t=true;
        col=b(i);
        return
    end
end
end