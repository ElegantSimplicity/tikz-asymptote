// Compute some attributes of the Collatz chain: length and maximum value
// Tính toán các thuộc tính của dãy Collatz: độ dài và giá trị lớn nhất
// https://asymptote.sourceforge.io/

// Cấu trúc (Kiểu) dữ liệu Collatz gồm 3 thuộc tính.
// nên tính đống thời chúng;
// không nên tính chain rồi mới tính len và max
struct Collatz {
    int[] chain;
    int len;
    int max_value;
}

// Hàm để tính các thuộc tính, trả về kiểu Collatz
Collatz collatz_calculate(int n) {
    Collatz c;   
    c.chain.push(n);  // Khởi tạo mảng với phần tử đầu tiên
    c.len = 1;        // Khởi tạo length sau khi thêm phần tử đầu
    c.max_value = n;  // Khởi tạo max với phần tử đầu
  
    while (n > 1) {
        n = (n % 2 == 0) ? (n # 2) : (3 * n + 1);
        c.chain.push(n);
        ++ c.len;
        c.max_value = max(n, c.max_value);
    }
    return c;
}

int n = 8;
Collatz d = collatz_calculate(n);
string s = string(d.chain[0]);
for (int i=1; i<d.chain.length; ++i)
    s += " -> " + string(d.chain[i]);
write('Collatz chain: ', s);
write('Collatz length: ', d.len);
write('Collatz max value: ', d.max_value);
