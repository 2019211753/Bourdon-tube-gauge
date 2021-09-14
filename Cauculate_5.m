function precise = Cauculate_5(a, Smax, eps, lambda, x, a_g)

    % a 为滑块的a
    % eps lambda 为ε和λ
    % x 为Draw中得到的极点位置 从而得到起始角位置（减九度）
    % Smax 为1中计算得到的自由端最长位移
    
    % delta为误差矩阵

    % 角度范围默认为18

    a_0 = x - a_g / 2;

    a_n = a_0 : 2 : (a_0 + a_g);

    s_n = (a_n - a_0) * Smax / a_g;
    s_n_ = a * (sind(a_n) - sind(a_0)) + a * (lambda^2 - (cosd(a_0) - eps)^2)^(1/2) - a * (lambda^2 - (cosd(a_n) - eps).^2).^(1/2);
    sn_diff = s_n - s_n_;
    
    precise = abs(sn_diff) / Smax;

end

