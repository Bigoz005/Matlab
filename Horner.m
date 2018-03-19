function  [output]  = Horner (A,wart)
output=zeros(1, length(wart));
for i= 1: length(wart)
    wynik=A(1);
for j=2:length(A)
    wynik= wynik*wart(1,i) + A(j);
end
output(1,i)=wynik;

end

