function [] = Wykres_punkty( )
wyniki=[];
y=[];
y1=[];
st=9;
 s=linspace(0,3,301);
 y1=2*exp(s)+5*sin(4*s);
for punkty=10:301
    x=linspace(0,3,punkty);
    y=2*exp(x)+5*sin(4*x);
    w=polyfit(x,y,st);
    yw=polyval(w,s);
    wyniki=[wyniki;punkty,mean((y1-yw).^2)];
end
plot(wyniki(:,1),wyniki(:,2));    
end
