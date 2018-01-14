function [x]=Av4Play(A)
x=[];
for i=1:7
    col=A(:,i);
    if length(nonzeros(col))<=5
        x=[x i];
    end
end
end