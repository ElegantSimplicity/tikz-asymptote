includegraphics("C:\Users\bsmar\Downloads\simson.png");
// Minh họa về đường thẳng Simson
// http://asymptote.ualberta.ca/
size(8cm);
import geometry;
import math;
pair A = dir(120), B = dir(190), C = dir(-30);
pair O = (0,0), M = dir(-100);
pair D = projection(A, B) * M;
pair E = projection(B, C) * M;
pair F = projection(C, A) * M;

markrightangle(M,D,B,size=3mm,FillDraw(yellow,invisible));
markrightangle(M,E,C,size=3mm,Fill(yellow));
markrightangle(M,F,C,size=3mm,Fill(yellow));

draw(E--F+1.2(F-E),magenta);
draw(E--D+.3(D-E),magenta);
draw(A--B--C--cycle^^B--M--C^^B--D--M^^M--F^^M--E);
draw(unitcircle);
label("$A$",A,NNW);
label("$B$",B,W);
label("$C$",C,ESE);
label("$M$",M,S);
label("$D$",D,SSW);
label("$E$",E,N);
label("$F$",F,NE);

//Lời giải
pen p1=blue+opacity(.1);
pen p2=red+opacity(.25);
markangle(Label(scale(.5)*"$2$",red),radius=6mm,C,E,F,invisible,Fill(p1));
markangle(Label(scale(.5)*"$2$",red),radius=6mm,C,M,F,invisible,Fill(p1));
markangle(Label(scale(.5)*"$1$",red),radius=6mm,B,E,D,invisible,Fill(p1));
markangle(Label(scale(.5)*"$1$",red),radius=6mm,B,M,D,invisible,Fill(p1));

markangle(D,B,M,radius=3mm,invisible,FillDraw(p2));
markangle(F,C,M,radius=3mm,invisible,Fill(p2));

shipout(bbox(5mm,invisible));
