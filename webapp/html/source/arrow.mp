beginfig(37);
  path p, q, r;
  ahlength := 1.5cm;
  pickup pencircle scaled .2cm;
  p = (0,0)..{right}(2.5cm,2cm);
  q = counterclockwise arrowhead p;
  z0 = directionpoint up of q;
  z.a = directionpoint right of q;
  z.b = directionpoint (-1,-1) of q;
  drawarrow p withcolor .4white;
  pickup defaultpen;
  undraw p;
  undraw q;
  ahlength:=4bp;
  z.a1-z0 = .3cm*unitvector(z.a-z0) rotated 90;
  z.a1-z.a2 = z0-z.a;
  z.b1-z0 = .3cm*unitvector(z.b-z0) rotated -90;
  z.b1-z.b2 = z0-z.b;
  z.ab = whatever[z.a1,z.a2] = whatever[z.b1,z.b2];
  z.a0-z.ab = .4cm*unitvector(z.a1-z.a2);
  z.b0-z.ab = .4cm*unitvector(z.b1-z.b2);
  drawdblarrow z.a1..z.a2;
  label.lrt(btex \tt ahlength etex, .9[z.a1,z.a2]);
  draw z.a1..z.a0 dashed evenly;
  drawdblarrow z.b1..z.b2;
  label.urt(btex \tt ahlength etex, .9[z.b1,z.b2]);
  draw z.b1..z.b0 dashed evenly;
  r = z.a0{(z.a2-z.a0) rotated 90}..{(z.b2-z.b0)rotated 90}z.b0;
  draw r;
  label.rt(btex \tt ahangle etex, point .5 of r);
endfig;
