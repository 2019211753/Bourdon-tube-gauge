function [slider_a, slider_b, slider_e, phi] = Cauculate_2(Smax, a_g, eps, lambda)
    
    % �������˳���b��ƫ��e

    % Smax Ϊ1�м���õ������ɶ��λ��
    % eps Ϊ�� 
    % lambda Ϊ�� 
   
    % slider_a slider_b slider_e Ϊ����ĸ�����
    % phi Ϊ�� ���˳�ʼλ���뻬���˶�����н�
    
    [x, ~] = Draw(eps, lambda);
    a_0 = x - a_g / 2;
    a_k = x + a_g / 2;
    
    slider_a = Smax / (sind(a_k) - sind(a_0) + (lambda^2 - (cosd(a_0) - eps)^2)^(1/2) - (lambda^2 - (cosd(a_k) - eps)^2)^(1/2));
        
    slider_b = lambda * slider_a;
    
    slider_e = eps * slider_a;
    
    phi = asind((slider_e - slider_a * cosd(a_k)) / slider_b);
end

