function [gammaRate, gamma_, St, Sr, Smax, delta] = Cauculate_1(tube_a, tube_b, p, mu, E, C1, C2, R, h, gamma)
   
    % 弹簧管结构设计

    % tube_a, tube_b 分别为椭圆长径短径
    % mu即μ 
    
    % gammaRate 为γ-γ' / γ
    % gamma_ 为γ'
    % St Sr 分别为S的分量 Smax为自由端最大位移量
    % delta 为δ St和Sr的夹角

    gammaRate = p * ((1 - mu^2) / E) * (R^2 * C1) ...
        / (tube_b * h * (C2 + R^2 * mu^2 / tube_a^4)) * (1 - tube_b^2 / tube_a^2);
   
    gamma_ = gamma - gamma * gammaRate;
    
    St = gammaRate * R * (gamma * pi /180 - sind(gamma));
    
    Sr = gammaRate * R * (1 - cosd(gamma));
    
    Smax = (St^2 + Sr^2).^(1/2);
    
    delta = atand(Sr / St);
end

