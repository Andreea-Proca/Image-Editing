function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % extrage canalul rosu al imaginii
      R = img(:, :, 1);
    % extrage canalul verde al imaginii
      G = img(:, :, 2);
    % extrace canalul albastru al imaginii
      B = img(:, :, 3);
      
    % aplica functia nn pe cele 3 canale ale imaginii
      R1 = nn_2x2(R, STEP);
      G1 = nn_2x2(G, STEP);
      B1 = nn_2x2(B, STEP);

    % formeaza imaginea finala cu cele 3 canale de culori
    % folosind functia cat
      out = cat(3, R1, G1, B1);
    
endfunction
