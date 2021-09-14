function [x, y] = Draw(eps, lambda)

    % ���ƹ���eps��lambda��Ia-��ͼ ���õ���������

    Ia = @(phi) 1 ./ (cosd(phi) - (cosd(phi) - eps) .* sind(phi) ./ (lambda.^2 - (cosd(phi) - eps).^2).^(1/2));
    fplot(Ia, [-30, 30]);

    [x, y] = fminbnd(Ia, -30, 30);

end
