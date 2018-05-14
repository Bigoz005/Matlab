function [] = aaa()
x=linspace(0,3,301);
y= 2*exp(x) + 5*sin(4*x);
wyniki=[];

   for n= 3:50
    w=polyfit(x,y,n);
    yw=polyval(w,x);
    wyniki=[wyniki;n,mean((y-yw).^2)];
   end
plot(wyniki(:,1),wyniki(:,2),'b')

end

