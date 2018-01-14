function [blank]=Av2Play(A)
blank=[];
for i=1:9
    if isempty(A{i})
        blank(length(blank)+1)=i;
    end
end
end