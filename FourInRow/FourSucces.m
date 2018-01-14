function [t]=FourSucces(ar,who)
n=length(ar); t=false;
counter=0; fn=false;
for j=1:n
    if ar(j)==mod(who,2)+1
        counter=0;
        fn=false;
    else
        counter=counter+1;
        if ar(j)==who
            fn=true;
        end
    end
    if counter>=4 && fn
        t=true;
        return
    end
end
end