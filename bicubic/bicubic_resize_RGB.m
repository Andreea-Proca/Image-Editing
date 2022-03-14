function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % extrage canalul rosu al imaginii
      R = img(:, :, 1);
    % extrage canalul verde al imaginii
      G = img(:, :, 2);
    % extrace canalul albastru al imaginii
      B = img(:, :, 3);

    % aplica functia nn pe cele 3 canale ale imaginii
      R1 = bicubic_resize(R, p, q);
      G1 = bicubic_resize(G, p, q);
      B1 = bicubic_resize(B, p, q);
    % formeaza imaginea finala cu cele 3 canale de culori
    % folosind functia cat
      out = cat(3, R1, G1, B1); 
      
endfunction