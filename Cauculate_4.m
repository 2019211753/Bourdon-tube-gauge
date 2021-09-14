function [slider_b, lambda, delta_sector] = Cauculate_4(slider_a, slider_e, A, R, a_g, delta, x, angle_sector)
       
    % 修正连杆长度b

    % slider_a slider_e 分别为滑块的a和e 不修正 
    % A 为修正后的A
    % delta 为δ St和Sr的夹角
    % x 为Draw中得到的极点位置 从而得到终止角位置（加九度）
    
    % slider_b lambda 分别为修正后的 b和λ
    
    a_k = x + a_g / 2;
    
    BO_O = acosd((R * cosd(delta) - slider_e) / A) + delta;
    
    c = (R^2 + A^2 - 2 * A * R * cosd(BO_O))^(1/2);

    BOD = a_k + acosd(slider_e / c);
    
    slider_b = (slider_a^2 + c^2 - 2 * slider_a * c * cosd(BOD))^(1/2);
    
    lambda = slider_b / slider_a;
    
    delta_sector = a_g * 1.3 + 4 * 360 / angle_sector; 
end

