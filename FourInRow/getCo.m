function [row,col]=getCo(k)
row=mod(k,6);
if row==0
    row=6;
end
col=floor((k-1)/6)+1;
end