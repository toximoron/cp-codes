//linear sieve algo from https://cp-algorithms.com/algebra/prime-sieve-linear.html
//time complexity : O(N)
const int N = 1e6 + 5;

vi pr, lp(N, 0) ;

void sieve(){
    frw(i, 2, N){
        if(!lp[i]){
            lp[i] = i;
            pr.pub(i);
        }
        for(auto j : pr){
            if(j > lp[i] || i * j >= N) break;
            lp[i * j] = j;
        }
    }
}

//nlog(logn)
vi primes, lp(N, 0);
void sieve(){
    frw(i, 2, N){
        if(lp[i])  continue;
        primes.pub(i);
        lp[i] = i;
        for(int j = 2 * i; j < N; j += i)
            if(lp[j] == 0)
                lp[j] = i;
    }
}


//function to generate prime factorization of a number in O(logn)
umap<ll,ll> fac(ll n){
    umap<ll,ll> m ;
    while(n != 1){
        m[lp[n]] ++ ;
        n /= lp[n] ;
    }
    return m ;
}

void pre()
{
    for ( int i = 1; i <= 1000000; i++ ) {
        for ( int j = i; j <= 1000000; j += i ) cnt[j]++;
    }
    return;
}