clear all;

i12 = 15;
a_g = 18;
angle_sector = i12 * a_g;
p = 0.25;
mu = 0.3;
E = 1.127 * 10^5;
C1 = 0.437;
C2 = 0.121;
h = 0.3;
gamma = 250;

tube_a = 12;
tube_b = 3;
R = 39;

[gammaRate, gamma_, St, Sr, Smax, delta] = Cauculate_1(tube_a, tube_b, p, mu, E, C1, C2, R, h, gamma);

eps = 1;
lambda = 4;

[slider_a, slider_b, slider_e, phi] = Cauculate_2(Smax, a_g, eps, lambda);
[c_, A_] = Cauculate_3(Smax, eps, a_g, lambda, delta, R);
[x, y] = Draw(eps, lambda);
a_0 = x - a_g / 2;
a_k = x + a_g / 2;
m = 0.25;
z1 = 18;
z2 = z1 * i12;
% 修正后的中心距
A = 36; 
[slider_b, lambda, delta_sector] = Cauculate_4(slider_a, slider_e, A, R, a_g, delta, x, angle_sector);
precise = Cauculate_5(slider_a, Smax, eps, lambda, x, a_g)
% 只保留设计值
% clear A_ C1 C2 c_ gammaRate phi Sr St x y; 
% 关闭Draw生成的图片
close all;

% zjw的为R = 38; a = 10; b = 2.5; m = 0.25; z = 18; A = 36
% 我的为 R = 39, a = 12; b = 3; m = 0.25; z = 18; A = 36;

%%%% 游丝设计

f = 0.19;
Fr_small = 0.035;
Fr_big = 0.059;
d_small = 0.0018;
d1_small = 0.0018;
d2_small = 0.00464;
d_big = 0.0018;
d1_big = 0.0018;
d2_big = 0.004;
eta = 0.9;
K = 1;
phi_min = pi / 2;
u = 6; 
D1 = 20;
D2 = 5.8;
E = 1.2 * 10^5;
n = 10;

[L, n, wire_a, ~] = Cauculate_6(f, Fr_small, Fr_big, d_small, d1_small, d2_small, d_big, d1_big, d2_big, D1, D2, i12, eta, K, phi_min, u, E, n);