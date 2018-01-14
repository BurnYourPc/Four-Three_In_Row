function [t]=Isem(A)
t=true;
for i=1:9
    if ~isempty(A{i})
        t=false;
        return
    end
end
end