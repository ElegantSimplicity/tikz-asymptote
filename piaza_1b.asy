// http://asymptote.ualberta.ca/
import geometry;
unitsize(1cm);
real R=3;
real t=.45;
real r=t*R, phi=115;
pair M=r*dir(phi);
pair A=(sqrt(R^2-M.y^2),M.y);
pair B=(M.x,sqrt(R^2-M.x^2));
pair C=(-sqrt(R^2-M.y^2),M.y);
pair D=(M.x,-sqrt(R^2-M.x^2));

path Square(pair A, pair B){
    pair Bt=rotate(90,B)*A;
    pair At=rotate(-90,A)*B;
    return A--B--Bt--At--cycle;
}

filldraw(Square(A,B),green);
filldraw(Square(B,C),yellow);
filldraw(Square(C,D),green);
filldraw(Square(D,A),yellow);

markrightangle(A,M,B);
draw(A--C^^B--D);
draw(circle((0,0),R));
shipout(bbox(5mm,invisible));
