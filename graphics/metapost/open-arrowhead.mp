% https://tex.stackexchange.com/a/459866/100
prologues := 3; 
outputtemplate := "%j%c.eps";

vardef open_arrowhead expr p =
  save q,e; path q; pair e;
  e = point length p of p;
  q = gobble(p shifted -e cutafter makepath(pencircle scaled 2ahlength))
    cuttings;
  (q rotated .5ahangle & reverse q rotated -.5ahangle)  shifted e
enddef;

vardef draw_open_arrow expr p = 
    draw p;
    draw open_arrowhead p;
enddef;

beginfig(1);
    path arc[];

    arc0 = 100 right .. 20 down {left} .. 100 left;

    arc1 = arc0 shifted 20 down rotated -10;
    arc2 = reverse arc0 shifted 20 down rotated 230;
    arc3 = reverse arc0 shifted 20 up reflectedabout(left, right) rotated 110;

    numeric t[], u[];
    (t1, t3) = arc1 intersectiontimes arc3;
    (u1, u2) = arc1 intersectiontimes arc2;
    (t2, u3) = arc2 intersectiontimes arc3;

    def drawarrow = draw_open_arrow enddef;
    ahangle := 30;
    forsuffixes $=1,2,3:
        drawarrow subpath 1/2 ( 0,    t$)    of arc$;
        drawarrow subpath 1/2 (t$,    t$+u$) of arc$;
        drawarrow subpath 1/2 (t$+u$, u$+2)  of arc$;
        draw      subpath 1/2 (u$+2,  4)     of arc$;
    endfor

endfig;
end
