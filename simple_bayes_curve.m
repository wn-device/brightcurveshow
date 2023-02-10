function [x_curve,y_curve] = simple_bayes_curve(norm_star_point,norm_contral_point,norm_end_point,nbr_points)
x1 = norm_star_point(1);
x2 = norm_contral_point(1);
x3 = norm_end_point(1);
y1 =  norm_star_point(2);
y2 = norm_contral_point(2);
y3 = norm_end_point(2);
 increment = 1.0 /(nbr_points -1);
    x_curve =x1:1:x3;
    y_curve = y1:1:y3;
    for k = 1:nbr_points-1
       t = k * increment;
      t2 = t * t;
      tr = 1. - t;
      tr2 = tr * tr;
      tr2t = tr * 2 * t;
      xx = tr2 * x1 + tr2t * x2 + t2 * x3;
      yy = tr2 * y1 + tr2t * y2 + t2 * y3;
      x_curve(k+1) = xx;
      y_curve(k+1) = yy;
    end
%     
% figure,plot(x_curve(:),y_curve(:));
end