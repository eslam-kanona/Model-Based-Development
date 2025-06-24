x = 0:0.1:10;
y = sin(x);
plot(x, y, 'b', 'LineWidth', 2);
title('Sine Wave');
xlabel('x values');
ylabel('sin(x)');
legend('sin(x)');