function [t,WhoWins]=IsWin(A)
t=false;
WhoWins=[];
for i=1:3
    row=A(i,:);
    col=A(:,i);
    if (isequal(row{1},row{2}) && isequal(row{1},row{3}))
        if ~isempty(row{1})
            t=true;
            WhoWins=row{1};
            return
        end
    end
    if (isequal(col{1},col{2}) && isequal(col{1},col{3}))
        if ~isempty(col{1})
            WhoWins=col{1};
            t=true;
            return
        end
    end
end
diag1=A([1 5 9]);
diag2=A([7 5 3]);
if (isequal(diag1{1},diag1{2}) && isequal(diag1{1},diag1{3}))
    if ~isempty(diag1{1})
        WhoWins=diag1{1};
        t=true;
        return
    end
end
if (isequal(diag2{1},diag2{2}) && isequal(diag2{1},diag2{3}))
    if ~isempty(diag2{1})
        WhoWins=diag2{1};
        t=true;
        return
    end
end
end