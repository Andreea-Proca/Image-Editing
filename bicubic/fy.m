function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
     [m n nr_colors] = size(f);
    % calculeaza derivata
     if( y == 1 || y == m )
       r = 0;
     else
       r = (f(y+1, x) - f(y-1, x))/2;
     endif
endfunction