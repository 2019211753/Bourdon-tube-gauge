function [x, y] = Draw(eps, lambda)

    % 绘制关于eps和lambda的Ia-φ图 并得到极点坐标

    Ia = @(phi) 1 ./ (cosd(phi) - (cosd(phi) - eps) .* sind(phi) ./ (lambda.^2 - (cosd(phi) - eps).^2).^(1/2));
    fplot(Ia, [-30, 30]);

    [x, y] = fminbnd(Ia, -30, 30);

end
