function Triliza
A=cell(3,3);
t=true;
rt='Whats your move? (1 to 9)\n';
rt2='Play first? 1 for yes 2 for no..\n';
s=input(rt2);
while t
    if s==1
    wh=input(rt);
    A{wh}='X';
    if IsWin(A)
        A
        break
    end
    if IsDraw(A)
        A
        break
    end
    pick=What2Play(A,'O',0);
    A{pick}='O';
    if IsWin(A)
        A
        break
    end
    if IsDraw(A)
        A
        break
    end
    A
    else
        if Isem(A)
            pick=[1 3 7 9];
            pick=pick(randperm(4,1));
            A{pick}='O';
            A
        else
        %A{3}='X'; A{9}='X'; A{1}='O';
        pick=What2Play(A,'O',0);
        A{pick}='O';
        if IsWin(A)
            A
            break
        end
        if IsDraw(A)
            A
            break
        end
        A
        end
        wh=input(rt);
        A{wh}='X';
        if IsWin(A)
            A
            break
        end
        if IsDraw(A)
            A
            break
        end
    end
end
end
