function [ output ] = funckja_pot( A , wart )
  
  output = zeros(1, length(wart));
  
 for i=1 : length(wart)
  wynik =0;
  p=size(A,2)- 1;
  for j = 1 : size(A,2)
     wynik = wynik + A(1,j)*(wart(1,i)^p);
     p=p-1;
     end
  output(1,i)=wynik;
 end
end