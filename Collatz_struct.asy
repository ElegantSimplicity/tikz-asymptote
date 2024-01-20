// Tính toán các thuộc tính của dãy Collatz
// https://asymptote.sourceforge.io/

struct Collatz {
    int[] chain;
    int len;
    int max;
}

void collatz_calculate(int n, Collatz c) {
    c.chain.push(n);  // Khởi tạo mảng với phần tử đầu tiên
    c.len = 1;        // Khởi tạo length sau khi thêm phần tử đầu
    c.max = n;        // Khởi tạo max với phần tử đầu
  
    while (n > 1) {
        n = (n % 2 == 0) ? (n # 2) : (3 * n + 1);
        c.chain.push(n);  
        ++c.len;
        c.max = max(n, c.max);
    }
}

Collatz d;
collatz_calculate(16, d);
write('Collatz chain: ');
for (int i=0; i<d.chain.length; ++i)
    write('->', d.chain[i]);
write('Collatz length:', d.len);
write('Collatz max value:', d.max);
