x_voc = SOC';
y_voc = Voc';

f_voc=@(b1,b2,b3,b4,b5,b6,b7,x)b1*exp(b2*x)+b3*x.^4+b4*x.^3+b5*x.^2+b6*x+b7;
fo_voc = fitoptions('Method','NonlinearLeastSquares','StartPoint',[0 0 0 0 0 0 0],'Algorithm','Trust-Region');
typ_voc = fittype(f_voc,'options',fo_voc);

coeffnames(typ_voc);
formula(typ_voc)
fitobject_voc = fit(x_voc,y_voc,typ_voc);
coeffvalues(fitobject_voc)

%code for display
hold on
plot(SOC,Voc);
plot(fitobject_voc,'m');
legend('Voc vs SOC','Fitted Curve');
set(gca,'XDir','reverse');
% xlim([0 1]);
% ylim([3.5 4.5]);
xlabel('SOC');
ylabel('VOC');
%hold off
% clear x_voc y_voc f_voc fo_voc typ_voc fitobject_voc;