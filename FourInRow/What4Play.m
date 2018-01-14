function [where]=What4Play(A,WhoPlays,n,DR,DL)
if n==0
    blank=Av4Play(A);
    counter=0;
    pick2=[];
    while ~isempty(blank)
        pick=blank(randperm(length(blank),1)); counter=counter+1;
        blank(blank==pick)=[];
        pick2(counter)=pick;
        T=PlayIt(A,pick,WhoPlays);
        where(counter)=What4Play(T,mod(WhoPlays,2)+1,n+1,DR,DL);
    end
    %where
    [~,where]=min(where);
    where=pick2(where);
else
    [iswin,who]=IsAWin(A,DR,DL);
    [~,double]=FindThreats(A,mod(WhoPlays,2)+1,DR,DL);
    cw=CouldWin(A,WhoPlays,DR,DL);
    if iswin
        if who==1
            where=100;
            return
        else
            where=-100;
            return
        end
    elseif length(nonzeros(A))==42
        where=0;
        return
    elseif double
        if who==1
            where=-100;
            return
        else
            where=100;
            return
        end
    end
    if n==3
        where=EvalIt(A,WhoPlays,DR,DL);
        return
    end
    blank=Av4Play(A);
    counter=0;
    while ~isempty(blank)
        pick=blank(randperm(length(blank),1)); counter=counter+1;
        blank(blank==pick)=[];
        T=PlayIt(A,pick,WhoPlays);
        where(counter)=What4Play(T,mod(WhoPlays,2)+1,n+1,DR,DL);
    end
    if WhoPlays==1
        where=max(where);
        return
    else
        where=min(where);
        return
    end
end
end