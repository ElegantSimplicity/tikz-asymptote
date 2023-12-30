// yellow = green iff ABCD là tứ giác nội tiếp với 2 đường chéo vuông góc
// http://asymptote.ualberta.ca/
import geometry;
unitsize(1cm);
real a=3, b=1.5, c=2;
real d=a*c/b;
pair A=(a,0), B=(0,b), C=(-c,0), D=(0,-d);
pair O=circumcenter(A,B,C);

path Square(pair A, pair B){
    pair Bt=rotate(90,B)*A;
    pair At=rotate(-90,A)*B;
    return A--B--Bt--At--cycle;
}

filldraw(Square(A,B),green);
filldraw(Square(B,C),yellow);
filldraw(Square(C,D),green);
filldraw(Square(D,A),yellow);

markrightangle(A,(0,0),B);
draw(A--C^^B--D);
draw(circle(O,abs(A-O)));
shipout(bbox(5mm,invisible));
