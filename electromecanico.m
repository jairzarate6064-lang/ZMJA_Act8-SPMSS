function dudt = electromecanico(u, Vin, Ra, La, Ke, Kt, J, b)

dudt = zeros(2,1);

dudt(1) = (Vin - Ra*u(1) - Ke*u(2))/La;
dudt(2) = (Kt*u(1) - b*u(2))/J;

end