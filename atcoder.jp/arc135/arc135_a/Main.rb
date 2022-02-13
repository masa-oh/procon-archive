x=gets.to_i
MOD=998244353
@fs={}

def f(n)
  if n<=4
    n
  else
    if n.odd?
      @fs[n/2] ||= f(n/2)
      @fs[n/2+1] ||= f(n/2+1)
      @fs[n/2] * @fs[n/2+1] % MOD
    else
      @fs[n/2]||=f(n/2)
      @fs[n/2] ** 2 % MOD
    end
  end
end

p f(x)