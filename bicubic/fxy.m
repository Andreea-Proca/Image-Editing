function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
     [m n nr_colors] = size(f);
    % calculeaza derivata
     if( x == 1 || y == 1 || x == n || y == m)
       r = 0;
     else
       r = (f(y-1, x-1) + f(y+1, x+1) - f(y+1, x-1) - f(y-1, x+1))/4;
     endif
endfunction