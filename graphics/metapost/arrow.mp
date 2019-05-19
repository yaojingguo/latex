prologues := 3;
outputtemplate := "%j-%c.eps";

beginfig(1);
  save arrowhead;
  vardef arrowhead(expr p) =
    save A,u,a,b; pair A,u; path a,b;
    A := point length(p)/2 of p;
    u := unitvector(direction length(p)/2 of p);
    a := A{-u}..(A - ahlength*u rotated 30);
    b := A{-u}..(A - ahlength*u rotated -30);
    (a & reverse(a) & b & reverse(b))--cycle
  enddef;
  u:=2cm; ahlength:=0.3cm;
  drawarrow (0,0)..(u,u)..(-u,u);
endfig; end;
