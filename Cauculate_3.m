function [c_, A_] = Cauculate_3(Smax, eps, a_g, lambda, delta, R)
    
    % 初定齿轮中心距 
    
    % Smax 为1中计算得到的自由端最长位移
    % R 为半径
    % eps 为ε 
    % lambda 为λ 
    % delta 为φ 连杆初始位置与滑块运动方向夹角
    
    % c_ 是c' 过渡值
    % A_ 是A' 校定前的中心距


    [x, ~] = Draw(eps, lambda);
    a_k = x + a_g / 2;
    [slider_a, slider_b, slider_e, phi] = Cauculate_2(Smax, a_g, eps, lambda);
    
    ODB = 90 - a_k + phi;
    
    c_ = (slider_a^2 + slider_b^2 - 2 * slider_a * slider_b * cosd(ODB))^(1/2);
        
    O_BO = 90 - delta - asind(slider_e / c_);
    
    A_ = (R^2 + c_^2 - 2 * R * c_ * cosd(O_BO))^(1/2);
    
    % 根据A_估算m和z 并依次计算修正后的A  
   
end

