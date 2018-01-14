function [A]=PlayIt(A,col,what)
c=A(:,col);
wh=find(c==0,1);
c(wh)=what;
A(:,col)=c;
end