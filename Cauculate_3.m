function [c_, A_] = Cauculate_3(Smax, eps, a_g, lambda, delta, R)
    
    % �����������ľ� 
    
    % Smax Ϊ1�м���õ������ɶ��λ��
    % R Ϊ�뾶
    % eps Ϊ�� 
    % lambda Ϊ�� 
    % delta Ϊ�� ���˳�ʼλ���뻬���˶�����н�
    
    % c_ ��c' ����ֵ
    % A_ ��A' У��ǰ�����ľ�


    [x, ~] = Draw(eps, lambda);
    a_k = x + a_g / 2;
    [slider_a, slider_b, slider_e, phi] = Cauculate_2(Smax, a_g, eps, lambda);
    
    ODB = 90 - a_k + phi;
    
    c_ = (slider_a^2 + slider_b^2 - 2 * slider_a * slider_b * cosd(ODB))^(1/2);
        
    O_BO = 90 - delta - asind(slider_e / c_);
    
    A_ = (R^2 + c_^2 - 2 * R * c_ * cosd(O_BO))^(1/2);
    
    % ����A_����m��z �����μ����������A  
   
end

