i = {0.0,1.0}

f(p,x) = (1/sqrt(2*pi)) * exp(i * x * p ) 

p = 1
dp  = 0.1
psi(x) = (1.0/2.0) * f(p-dp,x) + sqrt(1.0/2.0) * f(p,x) + (1.0/2.0) * f(p + dp,x)

set samples 1000

  plot [-20:20] real(f(p,x)) lc rgb 'red'
  plot [-20:20] real(f(p-dp,x)) lc rgb 'green', real(f(p,x)) lc rgb 'red'
  plot [-20:20] real(f(p-dp,x)) lc rgb 'green', real(f(p,x)) lc rgb 'red', real(f(p + dp,x)) lc rgb 'blue'
  plot [-50:50] real(f(p-dp,x)) lc rgb 'green', real(f(p,x)) lc rgb 'red', real(f(p + dp,x)) lc rgb 'blue', real(psi(x)) w l lc rgb 'black'
  plot [-100:100] real(psi(x))**2 + imag(psi(x))**2 w l lc rgb 'black'
