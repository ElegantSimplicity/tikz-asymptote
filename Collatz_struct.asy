// Compute some attributes of the Collatz chain: length and maximum value
// Tính toán các thuộc tính của dãy Collatz: độ dài và giá trị lớn nhất
// https://asymptote.sourceforge.io/

// Cấu trúc (Kiểu) Collatz gồm 3 thuộc tính:
struct Collatz {
    int[] chain;
    int len;     
    int max_value;
}

// Dùng biến c để lưu các tính toán
void collatz_calculate(int n, Collatz c) {
    c.chain.push(n);  // Khởi tạo mảng với phần tử đầu tiên
    c.len = 1;        // Khởi tạo length sau khi thêm phần tử đầu
    c.max_value = n;  // Khởi tạo max với phần tử đầu
  
    while (n > 1) {
        n = (n % 2 == 0) ? (n # 2) : (3 * n + 1);
        c.chain.push(n);
        ++ c.len;
        c.max_value = max(n, c.max_value);
    }
}

Collatz d;
int n = 31;
collatz_calculate(n, d);
string s = string(d.chain[0]);
for (int i=1; i<d.chain.length; ++i)
    s += " -> " + string(d.chain[i]);
write('Collatz chain: ', s);
write('Collatz length: ', d.len);
write('Collatz max value: ', d.max_value);

/*output
Collatz chain: 31 -> 94 -> 47 -> 142 -> 71 -> 214 -> 107 -> 322 -> 161 -> 484 -> 242 -> 121 -> 364 -> 182 -> 91 -> 274 -> 137 -> 412 -> 206 -> 103 -> 310 -> 155 -> 466 -> 233 -> 700 -> 350 -> 175 -> 526 -> 263 -> 790 -> 395 -> 1186 -> 593 -> 1780 -> 890 -> 445 -> 1336 -> 668 -> 334 -> 167 -> 502 -> 251 -> 754 -> 377 -> 1132 -> 566 -> 283 -> 850 -> 425 -> 1276 -> 638 -> 319 -> 958 -> 479 -> 1438 -> 719 -> 2158 -> 1079 -> 3238 -> 1619 -> 4858 -> 2429 -> 7288 -> 3644 -> 1822 -> 911 -> 2734 -> 1367 -> 4102 -> 2051 -> 6154 -> 3077 -> 9232 -> 4616 -> 2308 -> 1154 -> 577 -> 1732 -> 866 -> 433 -> 1300 -> 650 -> 325 -> 976 -> 488 -> 244 -> 122 -> 61 -> 184 -> 92 -> 46 -> 23 -> 70 -> 35 -> 106 -> 53 -> 160 -> 80 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
Collatz length: 107
Collatz max value: 9232
*/
