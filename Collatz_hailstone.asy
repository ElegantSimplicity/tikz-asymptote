// Collatz conjecture: the hailstone graph
// Run on http://asymptote.ualberta.ca/ 

struct Collatz {
    int[] chain;      // the Collatz chain
    int len;          // the length of the Collatz chain
    int max_value;    // the maximum of the Collatz chain
}

Collatz collatz_calculate(int n) {
    Collatz c;   
    c.chain.push(n);  // Initialise the chain with the first node n
    c.len = 1;        // Initialise the length chain as 1
    c.max_value = n;  // Initialise the maximum value as n
  
    while (n > 1) {
        n = (n % 2 == 0) ? (n # 2) : (3 * n + 1);
        c.chain.push(n);
        ++ c.len;
        c.max_value = max(n, c.max_value);
    }
    return c;
}

import graph;
size(12cm,8cm,IgnoreAspect);
int n = 10000;
for (int i=2; i < n; ++i) { 
    int d = collatz_calculate(i).len;
    //draw((i,d)--(i,0),blue);    // the bar graph
    dot((i,d),2pt+red);           // the hailstone graph
}

xaxis("$n$",BottomTop,LeftTicks);
yaxis("stoping time",LeftRight,RightTicks);
label("\bfseries Collatz conjecture: hailstone graph",point(N),2N);
shipout(bbox(5mm,invisible));
