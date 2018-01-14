function [t]=IsDraw(A)
t=true;
for i=1:9
    if isempty(A{i})
        t=false;
    end
end