function out = test_r(item, SOC, R)

x = SOC(item);
b8 = 0.3261;
b9 = -17.9725;
b10 = 0.1718;

y = b8*exp(b9*x)+b10;

R(item)

out = y;