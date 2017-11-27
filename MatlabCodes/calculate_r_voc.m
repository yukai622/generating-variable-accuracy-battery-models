step = 0.025;
R = 0:1/step;
Voc = 0:1/step;
Vb1440 = 0:1/step;
Vb720 = 0:1/step;

SOC = 0:1/step;

for i=1:1/step+1
    SOC(i)=(i-1)*step;
    x = SOC(i);
    Vb1440(i)=interp1(x1440mA/x1440mA(end),y1440mA,SOC(i),'linear','extrap');
%    Vb1440(i)= -5.666e-16*x^5 + 2.632e-12*x^4 - 4.38e-09*x^3 + 3.282e-06*x^2 - 0.001523*x + 4.047;
    Vb720(i)=interp1(x720mA/x720mA(end),y720mA,SOC(i),'linear','extrap');
end

figure;
plot(x1440mA,y1440mA,x720mA,y720mA,SOC,Vb1440,'o',SOC,Vb720,'o');

%xlim([0 1]);
%ylim([0 5]);

legend('1440mA','720mA');
title('SOC Points');

for i=1:1/step+1
    R(i)= (Vb720(i)-Vb1440(i))/(2.15-0.43);
    Voc(i) = Vb1440(i) + R(i)*2.15; %big current value
end