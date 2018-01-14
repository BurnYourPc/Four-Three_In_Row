function [t]=IsPlayable(A,k)
row=mod(k,6); t=false;
if row==0
    row=6;
end
col=floor((k-1)/6)+1;
m=A(:,col);
if find(m==0,1)==row
    t=true;
end
end