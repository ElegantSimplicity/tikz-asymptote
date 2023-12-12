includegraphics("C:\Users\bsmar\Downloads\simson.png");
// Minh họa về đường thẳng Simson
// http://asymptote.ualberta.ca/
size(8cm);
import geometry;
import math;
pair A=dir(120), B=dir(190), C=dir(-30);
pair O=(0,0), M=dir(-100);
pair D=(M+reflect(A,B)*M)/2;
pair E=(M+reflect(B,C)*M)/2;
pair F=(M+reflect(C,A)*M)/2;
markrightangle(M,D,B,size=3mm,Fill(yellow));
markrightangle(M,E,C,size=3mm,Fill(yellow));
markrightangle(M,F,C,size=3mm,Fill(yellow));
draw(E--F+1.2(F-E),red);
draw(E--D+.3(D-E),red);
draw(A--B--C--cycle^^B--M--C^^B--D--M^^M--F^^M--E);
dot(O,blue);
draw(unitcircle,blue);
label("$A$",A,NW);
label("$B$",B,W);
label("$C$",C,plain.E);
label("$M$",M,S);
label("$D$",D,SSW);
label("$E$",E,N);
label("$F$",F,NE);
/*
//Lời giải
markangle(Label(scale(.5)*"$2$",red),radius=6mm,C,E,F);
markangle(scale(.5)*"$2$",radius=6mm,C,M,F);
markangle(Label(scale(.5)*"$1$",red),radius=6mm,B,E,D);
markangle(scale(.5)*"$1$",radius=6mm,B,M,D);
*/
shipout(bbox(5mm,invisible));
