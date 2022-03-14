function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % face cast matricii I la double
      I = double(I);

      for x = 1 : m
        for y = 1 : n
           % calculeaza matricea cu derivate fata de x Ix
           Ix(x, y) = fx(I, y, x);
           % calculeaza matricea cu derivate fata de y Iy
           Iy(x, y) = fy(I, y, x);
           % calculeaza matricea cu derivate fata de xy Ixy
           Ixy(x, y) = fxy(I, y, x);
        endfor
      endfor

endfunction
