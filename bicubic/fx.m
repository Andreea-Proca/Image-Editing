function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================
      [m n nr_colors] = size(f);
    % calculeaza derivata
    if( x == 1  || x == n )
       r = 0;
    else
       r = (f(y, x+1) - f(y, x-1))/2;
  endif
endfunction