function [t,who]=IsAWin(A,DiagRight,DiagLeft)
t=false;
who=0;
x=find(A==2); o=find(A==1);
check4xR=DiagRight(x); check4xL=DiagLeft(x);
check4oR=DiagRight(o); check4oL=DiagLeft(o);
rowx=mod(x,6); colx=floor((x-1)/6)+1; rowx(rowx==0)=6;
rowo=mod(o,6); colo=floor((o-1)/6)+1; rowo(rowo==0)=6;
for i=1:6
    counterx=0; countero=0;
    if length(find(rowx==i))>=4
        c=colx(rowx==i);
        for j=1:length(c)-1
            if abs(c(j+1)-c(j))==1
                counterx=counterx+1;
            else
                counterx=0;
            end
            if counterx>=3
                t=true; who=2;
                return
            end
        end
    elseif length(find(rowo==i))>=4
        c=colo(rowo==i);
        for j=1:length(c)-1
            if abs(c(j+1)-c(j))==1
                countero=countero+1;
            else
                countero=0;
            end
            if countero>=3
                t=true; who=1;
                return
            end
        end
    end
end
for i=1:7
    counterx=0; countero=0;
    if length(find(colx==i))>=4
        c=rowx(colx==i);
        for j=1:length(c)-1
            if abs(c(j+1)-c(j))==1
                counterx=counterx+1;
            else
                counterx=0;
            end
            if counterx>=3
                t=true; who=2;
                return
            end
        end
    elseif length(find(colo==i))>=4
        c=rowo(colo==i);
        for j=1:length(c)-1
            if abs(c(j+1)-c(j))==1
                countero=countero+1;
            else
                countero=0;
            end
            if countero>=3
                t=true; who=1;
                return
            end
        end
    end
end
%check4oL
for i=5:10
    counterr=0; counterl=0;
    if (length(find(check4xR==i))>=4 || length(find(check4oR==i))>=4)
        c=find(DiagRight==i);
        for j=1:length(c)-1
            if A(c(j+1))==A(c(j))
                counterr=counterr+1;
            else
                counterr=0;
            end
            if counterr>=3    
                t=true;
                who=A(c(j));
                return
            end
        end
    end
    if (length(find(check4xL==i-8))>=4 || length(find(check4oL==i-8))>=4)
        c=find(DiagLeft==i-8);
        for j=1:length(c)-1
            if A(c(j+1))==A(c(j))
                counterl=counterl+1;
            else
                counterl=0;
            end
            if counterl>=3    
                t=true;
                who=A(c(j));
                return
            end
        end
    end
end
end