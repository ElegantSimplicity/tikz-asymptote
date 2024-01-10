// chạy trên http://asymptote.ualberta.ca/

bool isPrime(int n) {
    // kiểm tra số n có nguyên tố không 
    if (n <= 1) return false;
    for (int i=2; i*i <= n; ++i)
        if (n%i == 0) return false;
    return true;
}

int n=89;
if (isPrime(n)) 
    write(string(n) + ' là số nguyên tố.');
else
    write(string(n) + ' KHÔNG là số nguyên tố.');
