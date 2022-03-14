
function R = nn_resize(I, p, q)
    % =========================================================================
    % Upscaling de imagine folosind algoritmul de interpolare nearest-neighbour
    % Transforma imaginea I din dimensiune m x n in dimensiune p x q
    % =========================================================================
    [m n nr_colors] = size(I);

    % converteste imaginea de intrare la alb-negru daca este cazul
    if nr_colors > 1
        R = -1;
        return
    endif

    % initializeaza matricea finala
    R = zeros(p, q);

    % Obs:
    % Atunci cand se aplica o scalare, punctul (0, 0) al imaginii nu se va
    % deplasa.
    % In Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza in indici de la 1 la n si se inmulteste x si y cu s_x
    % si s_y, atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici in intervalul de la 0 la n - 1!

    % calculeaza factorii de scalare
      s_x = (q-1)/(n-1);
      s_y = (p-1)/(m-1);

    % Obs: daca se lucreaza cu indici in intervalul [0, n - 1], ultimul
    % pixel al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n

    % defineste matricea de transformare pentru redimensionare
      T = [s_x 0; 0 s_y];
    % calculeaza inversa transformarii
      T_inv = [1/s_x 0; 0 1/s_y];
    % parcurge fiecare pixel din imagine
    % foloseste coordonate de la 0 la n - 1
    for y = 0 : p-1
        for x = 0 : q - 1
             % aplica transformarea inversa asupra (x, y) si calculeaza
            % x_p si y_p din spatiul imaginii initiale
             
            matr = T_inv* [x;y];
            x_p = matr(1,1);
            y_p = matr(2,1);
            % trece (xp, yp) din sistemul de coordonate de la 0 la n - 1 in
            % sistemul de coordonate de la 1 la n pentru a aplica interpolarea
             x_p = x_p+1;
             y_p = y_p+1;
            % calculeaza cel mai apropiat vecin
            if(x_p <1)
              x_p =1;
            endif
            if(y_p <1)
              y_p =1;
            endif
            if(x_p > n)
              x_p = n;
            endif
            if(y_p > m)
              y_p = m;
            endif
            x_p = round(x_p);
            y_p = round(y_p);
            
            % calculeaza valoarea pixelului din imaginea finala
            R(y+1,x+1) = I(y_p,x_p);
        endfor
    endfor

    % converteste matricea rezultat la uint8
    R = uint8(R);

endfunction