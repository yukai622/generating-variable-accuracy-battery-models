x_r = SOC';
y_r = R';

f_r=@(b8,b9,b10,x)b8*exp(b9*x)+b10;
fo_r = fitoptions('Method','NonlinearLeastSquares','StartPoint',[0 0 0],'Algorithm','Trust-Region');
%fo = fitoptions('Method','Smoothing','StartPoint',[0 0 0]);
typ_r = fittype(f_r,'options',fo_r);
%typ = fittype('smoothingspline');

coeffnames(typ_r);
formula(typ_r)
fitobject_r = fit(x_r,y_r,typ_r);
coeffvalues(fitobject_r)

%code for display
hold on
plot(SOC,R,'o');
% plot(fitobject_r,'m');
legend('R vs SOC','Coeff');
% xlim([0 1]);
xlabel('SOC');
ylabel('R');
%set(gca,'XDir','reverse');
%hold off

%Comment this line if you want to check these values
clear x_r y_r f_r fo_r typ_r fitobject_r;
