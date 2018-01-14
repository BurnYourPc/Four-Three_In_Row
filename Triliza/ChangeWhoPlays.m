function [who]=ChangeWhoPlays(who)
if isequal(who,'X')
    who='O';
else
    who='X';
end
end