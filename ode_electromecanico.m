Vin = 5;
Ra = 2;
La = 23e-3;
Ke = 10e-3;
Kt = 10e-3;
J = 1e-3;
b = 1.2e-3;

io = 0;
wo = 0;
X = [io; wo];

t_ini = 0;
t_fin = 5;
tspan = [t_ini t_fin];

[t, u] = ode45(@(t,u) electromecanico(u, Vin, Ra, La, Ke, Kt, J, b), tspan, X);

plot(t,u(:,2)); %w
grid on