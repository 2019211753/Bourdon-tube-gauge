function [slider_a, slider_b, slider_e, phi] = Cauculate_2(Smax, a_g, eps, lambda)
    
    % 计算连杆长度b与偏距e

    % Smax 为1中计算得到的自由端最长位移
    % eps 为ε 
    % lambda 为λ 
   
    % slider_a slider_b slider_e 为滑块的各参数
    % phi 为φ 连杆初始位置与滑块运动方向夹角
    
    [x, ~] = Draw(eps, lambda);
    a_0 = x - a_g / 2;
    a_k = x + a_g / 2;
    
    slider_a = Smax / (sind(a_k) - sind(a_0) + (lambda^2 - (cosd(a_0) - eps)^2)^(1/2) - (lambda^2 - (cosd(a_k) - eps)^2)^(1/2));
        
    slider_b = lambda * slider_a;
    
    slider_e = eps * slider_a;
    
    phi = asind((slider_e - slider_a * cosd(a_k)) / slider_b);
end

