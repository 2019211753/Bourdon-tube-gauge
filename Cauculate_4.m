function [slider_b, lambda, delta_sector] = Cauculate_4(slider_a, slider_e, A, R, a_g, delta, x, angle_sector)
       
    % �������˳���b

    % slider_a slider_e �ֱ�Ϊ�����a��e ������ 
    % A Ϊ�������A
    % delta Ϊ�� St��Sr�ļн�
    % x ΪDraw�еõ��ļ���λ�� �Ӷ��õ���ֹ��λ�ã��ӾŶȣ�
    
    % slider_b lambda �ֱ�Ϊ������� b�ͦ�
    
    a_k = x + a_g / 2;
    
    BO_O = acosd((R * cosd(delta) - slider_e) / A) + delta;
    
    c = (R^2 + A^2 - 2 * A * R * cosd(BO_O))^(1/2);

    BOD = a_k + acosd(slider_e / c);
    
    slider_b = (slider_a^2 + c^2 - 2 * slider_a * c * cosd(BOD))^(1/2);
    
    lambda = slider_b / slider_a;
    
    delta_sector = a_g * 1.3 + 4 * 360 / angle_sector; 
end

