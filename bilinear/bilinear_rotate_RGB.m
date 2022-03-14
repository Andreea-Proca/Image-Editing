function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % extrage canalul rosu al imaginii
      R = img(:, :, 1);
    % extrage canalul verde al imaginii
      G = img(:, :, 2);
    % extrace canalul albastru al imaginii
      B = img(:, :, 3);

    % aplica rotatia pe fiecare canal al imaginii
      R1 = bilinear_rotate(R, rotation_angle);
      G1 = bilinear_rotate(G, rotation_angle);
      B1 = bilinear_rotate(B, rotation_angle);
    % reconstruieste imaginea RGB finala (folosind functia cat)
      out = cat(3, R1, G1, B1);
endfunction