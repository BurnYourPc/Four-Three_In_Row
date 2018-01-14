function [where]=What2Play(A,WhoPlays,n)
if n==0
    blank=Av2Play(A);
    counter=0;
    pick2=[];
    while ~isempty(blank)
        T=A;
        pick=blank(randperm(length(blank),1)); counter=counter+1;
        blank(blank==pick)=[];
        pick2(counter)=pick;
        T{pick}=WhoPlays;
        where(counter)=What2Play(T,ChangeWhoPlays(WhoPlays),n+1);
    end
    %where
    [~,where]=max(where);
    where=pick2(where);
else
    [iswin,who]=IsWin(A);
    if iswin
        if isequal(who,'O')
            where=30;
            return
        else
            where=-30;
            return
        end
    elseif IsDraw(A)
        where=0;
        return
    end
    blank=Av2Play(A);
    counter=0;
    while ~isempty(blank)
        T=A;
        pick=blank(randperm(length(blank),1)); counter=counter+1;
        blank(blank==pick)=[];
        T{pick}=WhoPlays;
        where(counter)=What2Play(T,ChangeWhoPlays(WhoPlays),n+1);
    end
    if isequal(WhoPlays,'O')
        where=max(where);
        if where<0
            where=where+n;
        end
        return
    else
        sum=length(find(where==30));
        where=min(where)+0.1*sum;
        return
    end
end
end