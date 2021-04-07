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
figure(1); plot(t,y1);
figure(2); plot(t,y2);

subplot(1,2,1);
plot(t,y1);

subplot(1,2,2);
plot(t,y2);

axis([0.5 1 -1 1])
clf;
a = magic(5)

imagesc(a)
imagesc(a), colorbar, colormap gray;

a(1,2)
a(4,5)
imagesc(magic(15)), colorbar, colormap gray;

a =1, b=2, c=3