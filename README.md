# Image-Editing
 Interpolation, Matlab

Interpolare aplicata pe imagini

1. Interpolare nearest-neighbour
   Contine functiile:
- nn_2x2(f, STEP) care aplica interpolare nearest-neighbour pe o imagine alb-negru f 2x2 cu
puncte intermediare echidistante, avand intre ele distanta data de STEP.
- nn_2x2_RGB(f, STEP) care realizeaza acelasi lucru, dar pentru o imagine RGB.
- nn_resize(I, p, q) care redimensioneaza imaginea alb-negru I de dimensiune m x n astfel incat
aceaacesta sa aiba dimensiunea p x q
- nn_resize_RGB(I, p, q) care realizeaza acelasi lucru, dar pentru o imagine RGB.

2. Interpolare biliniara
   Contine functiile:
- bilinear_coef(f, x1, y1, x2, y2) care calculeaza coeficientii a de interpolare biliniara intre 4
puncte.
- bilinear_2x2(f, STEP) care aplica interpolare nearest-neighbour pe o imagine alb-negru f
2x2 cu puncte intermediare echidistante, avand intre ele distanta data de STEP.
- bilinear_2x2_RGB(f, STEP) care realizeaza acelasi lucru, dar pentru o imagine RGB.
- bilinear_resize(I, p, q) care redimensioneaza imaginea alb-negru I de dimensiune m x n astfel incat
aceasta sa aiba dimensiunea p x q.
- bilinear_resize_RGB(I, p, q) care realizeaza acelasi lucru, dar pentru o imagine RGB.
- bilinear_rotate(I, angle) care roteste o imagine alb-negru I cu unghiul dat.
- bilinear_rotate_RGB(I, angle) care realizeaza acelasi lucru, dar pentru o imagine RGB.
- surrounding_points(n, m, x, y) care calculeaza cele 4 puncte ce contin in interior (x, y), 
primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se iese din matrice.

3. Interpolare bicubica
   Contine functiile:
- precalc_d(I) care precalculeaza derivatele dx, dy, dxy in fiecare punct al imaginii folosind
diferente finite
- bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2) care calculeaza matricea A de coeficienti de
interpolare bicubica intre cele 4 puncte, primind la intrare matricile cu derivate precalculate
- bicubic_resize(I, p, q) care redimensioneaza imaginea alb-negru I de dimensiune m x n astfel incat
aceasta sa aiba dimensiunea p x q
- bicubic_resize_RGB(I, p, q) care realizeaza acelasi lucru, dar pentru o imagine RGB
- surrounding_points(n, m, x, y) care calculeaza cele 4 puncte ce contin in interior (x, y), 
primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se iese din matrice.
- fx(f, x, y) care aproximeaza derivata fata de x a lui f in punctul (x, y).
- fy(f, x, y)  care aproximeaza derivata fata de y a lui f in punctul (x, y).
- fxy(f, x, y)  care aproximeaza derivata fata de x si y a lui f in punctul (x, y).
