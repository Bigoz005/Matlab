x=linspace(0.95, 1.05, 100);
w=(x-1).^10;
A=[1 -10 45 -120 210 -252 210 -120 45 -10 1];

w1=polyval(A,x);
w2=funckja_pot(A,x);
w3=Horner(A,x);


plot(x,w1,x,w2,x,w3,x,w);
legend('polyval','funckja_pot','Horner','(x-1.^10)');