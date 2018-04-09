function [ wynik ] = Pochodna()

h0=0.3
x0=0.1
fp1= 1/(((x0)^2) +1) ;   %pierwsza pochodna
fp2= -2*(x0)/(((x0^2)+1)^2) ; %druga pochodna
fp3= 6*(x0^2)-2/(((x0^2)+1)^3); %trzecia pochodna

Rp=[];
Rc=[];
H=[];
wz2=[]; %2wezel wzoru
wz3=[]; %3wezel wzoru

for k=0:40;
    h=h0/(2 .^ k);
    rp= (atan((x0+h)) - atan(x0)) ./h; %roznica progresywna
    rc= (atan((x0+h)) - atan(x0 -h)) ./ (2*h); %roznica centralna
    Rp=[Rp rp];
    Rc=[Rc rc];
    H= [H h];
    wz2 =[wz2, ((h/ 2) * fp2)];
    wz3=[wz3, ((h ^ 2 / 6) * fp3)];
end;

ePp = abs((Rp - fp1) ./ fp1);
ePc = abs((Rc - fp1) ./ fp1);

[mePp mePpI] = min(ePp);
[mePc mePcI] = min(ePc);

PpHopt = H(mePpI);
PcHopt = H(mePcI);

disp('min ePp = ');
disp(mePp);
disp('Pp h_opt = '); %krok optymalny
disp(PpHopt);
disp(' = h0 / 2^');
disp(mePpI-1);
disp('min ePc = ');
disp(mePc);
disp('Pc h_opt = '); %krok optymalny
disp(PcHopt);
disp(' = h0 / 2^');
disp(mePcI-1);

loglog(H, ePp, 'r.', H, ePc, 'go', H, abs(wz2 / fp1), 'b', H, abs(wz3 / fp1), 'k');

end

