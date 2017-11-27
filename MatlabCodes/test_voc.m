function out = test_voc(item, SOC, Voc)

x = SOC(item);
b1 = 2.1619;
b2 = -0.5390;
b3 = -0.0229;
b4 = 0.1313;
b5 = 0.0292;
b6 = 1.1972;
b7 = 1.5593;

y = b1*exp(b2*x)+b3*x^4+b4*x^3+b5*x^2+b6*x+b7;

Voc(item)

out = y;