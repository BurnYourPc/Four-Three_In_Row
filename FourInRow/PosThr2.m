function [num]=PosThr2(A,who,DR,DL,onetwo)
num=0;
for i=1:7
    col=A(:,i);
    if length(find(col==who))==onetwo
        if length(nonzeros(col))==onetwo
            num=num+1;
        else
            if FourSucces(col,who)
                num=num+1;
            end
        end
    end
    if i<7
        row=A(i,:);
        if length(find(row==who))==onetwo
            if length(nonzeros(row))==onetwo
                num=num+1;
            else
                if FourSucces(row,who)
                    num=num+1;
                end
            end
        end
    end
end
for i=5:10
    diag1=A(DR==i); diag2=A(DL==i-8);
    if length(find(diag1==who))==onetwo
        if length(nonzeros(diag1))==onetwo
            num=num+1;
        else
            if FourSucces(diag1,who)
                num=num+1;
            end
        end
    end
    if length(find(diag2==who))==onetwo
        if length(nonzeros(diag2))==onetwo
            num=num+1;
        else
            if FourSucces(diag2,who)
                num=num+1;
            end
        end
    end
end