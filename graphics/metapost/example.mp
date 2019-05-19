prologues := 3;
outputtemplate := "%j-%c.eps";
beginfig(1);


side = 20;
low = side;
high = 2 * side;

count = 5;

draw (0, low)  -- (count * side, low);
draw (0, high) -- (count * side, high);

for i = 0 upto 5:
  draw (i * side, low) -- (i * side, high);
endfor;


drawarrow (3.5 * side, high + side) .. (3 * side, high + 0.8 * side) .. (2.5 * side, high);
drawarrow (0.5 * side, low - side) .. (side, low - 0.8 * side) .. (1.5 * side, low);

label.top(btex left etex, (3.4 * side, high + 3));
label.bot(btex right etex, (0.7 * side, low))

endfig;
end;
  
