function precise = Cauculate_5(a, Smax, eps, lambda, x, a_g)

    % a Ϊ�����a
    % eps lambda Ϊ�źͦ�
    % x ΪDraw�еõ��ļ���λ�� �Ӷ��õ���ʼ��λ�ã����Ŷȣ�
    % Smax Ϊ1�м���õ������ɶ��λ��
    
    % deltaΪ������

    % �Ƕȷ�ΧĬ��Ϊ18

    a_0 = x - a_g / 2;

    a_n = a_0 : 2 : (a_0 + a_g);

    s_n = (a_n - a_0) * Smax / a_g;
    s_n_ = a * (sind(a_n) - sind(a_0)) + a * (lambda^2 - (cosd(a_0) - eps)^2)^(1/2) - a * (lambda^2 - (cosd(a_n) - eps).^2).^(1/2);
    sn_diff = s_n - s_n_;
    
    precise = abs(sn_diff) / Smax;

end

