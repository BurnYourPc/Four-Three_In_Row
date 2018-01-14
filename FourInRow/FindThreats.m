function [wh,double]=FindThreats(A,who,DR,DL)
blank=find(A==0); counter=0; double=false; wh=[];
for i=1:length(blank)
    T=A;
    T(blank(i))=who;
    if IsAWin(T,DR,DL)
        r=mod(blank(i),6);
        if r~=1
            T(blank(i))=0;
            if T(blank(i)-1)==0
                T(blank(i)-1)=mod(who,2)+1;
                if ~IsAWin(T,DR,DL)
                    counter=counter+1;
                    wh(counter)=blank(i);
                elseif r~=0
                    T(blank(i)-1)=0; T(blank(i)+1)=who;
                    if IsAWin(T,DR,DL)
                        counter=counter+1;
                        wh(counter)=blank(i);
                    end
                end
            else
                counter=counter+1;
                wh(counter)=blank(i);
            end
        else
            counter=counter+1;
            wh(counter)=blank(i);
        end
    end
end
sum=0; w=0;
if length(wh)>1
    for i=1:length(wh)
        if IsPlayable(A,wh(i))
            sum=sum+1;
            w=i;
        end
        if sum>1
            double=true;
            return
        end
    end
end
%%if length(wh)==1
%    r=mod(wh,6);
%    
%    if r~=1
%        if T(wh-1)==0
%            T(wh-1)=mod(who,2)+1;
%            if ~IsAWin(T,DR,DL)
%                
%    if r~=0
%        if IsPlayable(A,wh)
%            T=A;
%            T(wh)=mod(who,2)+1; T(wh+1)=who;
%            if IsAWin(T,DR,DL)
%                double=true;
%                return
%            end
%        end
%    end
if sum==1
    r=mod(wh(w),6);
    if r~=0
        %if IsPlayable(A,wh(w))
        T=A;
        T(wh(w))=mod(who,2)+1;
        if ~IsAWin(T,DR,DL)
            T(wh(w)+1)=who;
            if IsAWin(T,DR,DL)
                double=true;
                return
            end
        end
    end
end
end