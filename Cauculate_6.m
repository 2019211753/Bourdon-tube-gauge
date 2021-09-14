function [L, n, wire_a, K] = Cauculate_6(f, Fr_small, Fr_big, d_small, d1_small, d2_small, d_big, d1_big, d2_big, D1, D2, i12, eta, K, phi_min, u, E, n)
%CAUCULATE_6 此处显示有关此函数的摘要

% 计算游丝力矩

M_fz1_1 = 1 / 2 * 1.57 * f * Fr_small * d_small;
M_fz1_2 = 1 / 3 * f * Fr_small * (d1_small^3 - d2_small^3) / (d1_small^2 - d2_small^2);
M_fz1 = max(M_fz1_1, M_fz1_2);

M_fz2_1 = 1 / 2 * 1.57 * f * Fr_big * d_big;
M_fz2_2 = 1 / 3 * f * Fr_big * (d1_big^3 - d2_big^3) / (d1_big^2 - d2_big^2);
M_fz2 = max(M_fz2_1, M_fz2_2);

M_fz = M_fz1 + M_fz2 * 1 * i12 / eta;

M_min = K * M_fz / (1 - 0.1 * K);

% 游丝几何尺寸计算

L = pi * n  * (D1 + D2) / 2;
h = (12 * L * M_min / u / E / phi_min)^(1/4);
wire_b = u * h;
L = E * wire_b * h^3 / 12 / M_min * phi_min;
n = 2 * L / pi / (D1 + D2);
wire_a = (D1 - D2) / 2 / n;
K = wire_a / h;

phi_limit = 24 * phi_min / wire_b / h.^2;

end

