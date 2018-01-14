function [num]=EvalIt(A,who,DR,DL)
[wh1,~]=FindThreats(A,who,DR,DL); num=0; odd1={}; even1={}; 
[wh2,double2]=FindThreats(A,mod(who,2)+1,DR,DL); odd2={}; even2={};
cw=CouldWin(A,who,DR,DL);
%[cl,col2]=CouldWin(A,mod(who,2)+1,DR,DL);
[md,~]=CouldMakeDouble(A,who,DR,DL);
numa1=PosThr2(A,who,DR,DL,1); numb1=PosThr2(A,mod(who,2)+1,DR,DL,1);
numa2=PosThr2(A,who,DR,DL,2); numb2=PosThr2(A,mod(who,2)+1,DR,DL,1);
if cw
    if who==1
        num=100;
        return
    else
        num=-100;
        return
    end
end
if double2
    if who==1
        num=-100;
        return
    else
        num=100;
        return
    end
end
if md
    %if ~cl
        if who==1
            num=100;
            return
        else
            num=-100;
            return
        end
    %else
     %   if col1==col2
     %       if WhoPlays==1
     %           num=100;
     %           return
     %       else
     %           num=-100;
     %           return
     %       end
     %   end
    %end
end
counterev=0; counterod=0;
for i=1:length(wh1)
    [row,col]=getCo(wh1(i));
    if mod(row,2)==0
        counterev=counterev+1;
        even1{counterev}=[row col];
    else
        counterod=counterod+1;
        odd1{counterod}=[row col];
    end
end
counterev=0; counterod=0;
for i=1:length(wh2)
    [row,col]=getCo(wh2(i));
    if mod(row,2)==0
        counterev=counterev+1;
        even2{counterev}=[row col];
    else
        counterod=counterod+1;
        odd2{counterod}=[row col];
    end
end
if ~isempty(even1) && ~isempty(odd1)
    if isempty(even2) || isempty(odd2)
        if who==1
            num=50+numa1+2*numa2+4*(length(wh1)-2)-numb1-2*numb2-4*length(wh2);
            return
        else
            num=-50-numa1-2*numa2-4*(length(wh1)-2)+numb1+2*numb2+4*length(wh2);
            return
        end
    else
        num=0;
        return
    end
else
    if ~isempty(even2) && ~isempty(odd2)
        if who==1
            num=-50+numa1+3*numa2+6*length(wh1)-numb1-3*numb2-6*(length(wh2)-2);
            return
        else
            num=50-numa1-3*numa2-6*length(wh1)+numb1+3*numb2+6*(length(wh2)-2);
            return
        end
    end
end
if who==1
    num=numa1+3*numa2+6*length(wh1)-numb1-3*numb2-6*length(wh2);
    return
else
    num=-numa1-3*numa2-6*length(wh1)+numb1+3*numb2+6*length(wh2);
    return
end
end