prologues := 3;
outputtemplate := "%j-%c.eps";
pair A, B, C, C';
u := 1cm; A=(0,0); B=(5u,0); C=(2u,3u);
% C'= whatever[A,B] = C + whatever*dir(
%   1/2*angle(A-C)+1/2*angle(B-C));
beginfig(1)
  draw A..B..C--cycle; 
  % draw C--C';
  dotlabel.lft("A",A); dotlabel.urt("B",B);
  dotlabel.top("C",C); 
  % dotlabel.bot("C'",C');
endfig;
end;
