t = [0:0.01:0.98];
t
y1 = sin(2*pi*4*t);
plot(t,y1);

y2 = cos(2*pi*4*t);
plot(t,y2);

plot(t,y1,'b');
hold on;
plot(t,y2,'r');

xlabel('time');
ylabel('value');

legend('sin', 'cos');
title('my plot');
str = pwd

print -dpng 'myPlot.png'