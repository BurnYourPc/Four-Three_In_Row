function PrintCell(A)
for i=6:-1:1
    for j=1:7
        if A(i,j)==0
            fprintf('|_|\t');
        elseif A(i,j)==1
            fprintf(' %s\t','O');
        else
            fprintf(' %s\t','X');
        end
    end
    fprintf('\n');
end
fprintf('\n');
end