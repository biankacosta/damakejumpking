PImage iniciar, cen1, cen2, cen3, cen4, cen5, cen6, cavD, cavE, cavPD, cavPE, cavPulo, cavPulando, telaCred, tutorial, princesa, fim;
boolean inicio = true, tuto, perso, cenaUm, cenaDois, cenaTres, cenaQuatro, cenaCinco, cenaSeis, creditos;
Plataformas plat0, plat1, plat2, plat3, plat4, plat5, plat6, plat7, plat8, plat9, plat10, plat11, plat12, plat13, plat14, plat15, plat16, plat17, plat18, plat19, plat20, plat21, plat22, plat23, plat24, plat25, plat26, plat27, plat28, plat29, plat30, plat31, plat32, plat33, plat34, plat35, plat36, plat37, plat38, plat39, plat40, plat41, plat42, plat43, plat44, plat45, plat46, plat47, plat48, plat49, plat50, plat51;

void setup() {
  size(800, 600);
  strokeWeight(2);
  colorMode(HSB, 360, 100, 100);

  iniciar = loadImage("inicio.png");
  cen1 = loadImage("cen1.png");
  cen2 = loadImage("cen2.png");
  cen3 = loadImage("cen3.png");
  cen4 = loadImage("cen4.png");
  cen5 = loadImage("cen5.png");
  cen6 = loadImage("cen6.png");
  cavD = loadImage("CavaleiroD.png");
  cavE = loadImage("CavaleiroE.png");
  cavPD = loadImage("CavaleiroPD.png");
  cavPE = loadImage("CavaleiroPE.png");
  cavPulo = loadImage("CavaleiroPulo.png");
  cavPulando = loadImage("CavaleiroPulando.png");
  telaCred = loadImage("creditos.png");
  tutorial = loadImage("tutorial.png");
  princesa = loadImage("princesa.png");
  fim = loadImage("fim.png");

  plat1 = new Plataformas(100, 500, 200, 300);
  plat2 = new Plataformas(700, 500, 200, 300);
  plat0 = new Plataformas(400, 605, 800, 10);
  plat3 = new Plataformas(0, 175, 20, 350);
  plat4 = new Plataformas(800, 175, 20, 350);
  plat5 = new Plataformas(400, 150, 200, 100);
  plat6 = new Plataformas(575, 525, 170, 70);
  plat7 = new Plataformas(710, 365, 110, 70);
  plat8 = new Plataformas(475, 365, 130, 70);
  plat9 = new Plataformas(260, 225, 130, 120);
  plat10 = new Plataformas(77, 198, 126, 170);
  plat11 = new Plataformas(7, 300, 14, 600);
  plat12 = new Plataformas(793, 300, 14, 600);
  plat13 = new Plataformas(7, 300, 14, 600);
  plat14 = new Plataformas(793, 300, 14, 600);
  plat15 = new Plataformas(385, 536, 96, 34);
  plat16 = new Plataformas(572, 536, 96, 34);
  plat17 = new Plataformas(746, 454, 80, 34);
  plat18 = new Plataformas(440, 400, 248, 64);
  plat19 = new Plataformas(521, 360, 86, 38);
  plat20 = new Plataformas(313, 235, 100, 90);
  plat21 = new Plataformas(64, 180, 100, 32);
  plat22 = new Plataformas(286, 5, 126, 10);
  plat23 = new Plataformas(286, 575, 126, 56);
  plat24 = new Plataformas(7, 300, 14, 600);
  plat25 = new Plataformas(793, 300, 14, 600);
  plat26 = new Plataformas(286, 378, 122, 30);
  plat27 = new Plataformas(534, 329, 80, 128);
  plat28 = new Plataformas(260, 207, 70, 144);
  plat29 = new Plataformas(240, 140, 30, 279);
  plat30 = new Plataformas(62, 382, 96, 30);
  plat31 = new Plataformas(559, 186, 30, 158);
  plat32 = new Plataformas(751, 222, 70, 30);
  plat33 = new Plataformas(559, 7, 30, 14);
  plat34 = new Plataformas(607, 124, 124, 32);
  plat35 = new Plataformas(7, 300, 14, 600);
  plat36 = new Plataformas(793, 300, 14, 600);
  plat37 = new Plataformas(220, 567, 70, 65);
  plat38 = new Plataformas(580, 567, 70, 65);
  plat39 = new Plataformas(40, 421, 52, 30);
  plat40 = new Plataformas(580, 420, 70, 26);
  plat41 = new Plataformas(756, 293, 60, 60);
  plat42 = new Plataformas(506, 151, 56, 30);
  plat43 = new Plataformas(400, 125, 56, 30);
  plat44 = new Plataformas(254, 95, 56, 30);
  plat45 = new Plataformas(93, 155, 56, 30);
  plat46 = new Plataformas(400, -28, 300, 70);
  plat47 = new Plataformas(400, 616, 300, 70);
  plat48 = new Plataformas(90, 560, 30, 30);
  plat49 = new Plataformas(90, 320, 30, 30);
  plat50 = new Plataformas(614, 420, 52, 360);
  plat51 = new Plataformas(440, 340, 400, 200);
}
void draw() {
  if (inicio) {
    telaInicial();
  }

  if (cenaUm) {
    inicio = false;
    cena1();

    if (pY <= 0) {
      cenaUm = false;
      cenaDois = true;
      pY = 600;
      pY = MRUV(pY, vel, tempoPulo, 10);
    }
  }

  if (cenaDois == true) {
    cena2();

    if  (pY >= 599) {
      cenaDois = false;
      cenaUm = true;
      pY = 2;
    }

    if (pY <= 0) {
      cenaDois = false;
      cenaTres = true;
      pY = 600;
      pY = MRUV(pY, vel, tempoPulo, 10);
    }
  }

  if (cenaTres == true) {
    cena3();
    if  (pY >= 599) {
      cenaTres = false;
      cenaDois = true;
      pY = 2;
    }
    if (pY <= 0) {
      cenaTres = false;
      cenaQuatro = true;
      pY = 600;
      pY = MRUV(pY, vel, tempoPulo, 10);
    }
  }

  if (cenaQuatro == true) {
    cena4();
    if  (pY >= 599) {
      cenaQuatro = false;
      cenaTres = true;
      pY = 2;
    }
    if (pY <= 0) {
      cenaQuatro = false;
      cenaCinco = true;
      pY = 600;
      pY = MRUV(pY, vel, tempoPulo, 10);
    }
  }

  if (cenaCinco == true) {
    cena5();
    if  (pY >= 599) {
      cenaCinco = false;
      cenaQuatro = true;
      pY = 2;
    }
    if (pY <= 0) {
      cenaCinco = false;
      cenaSeis = true;
      pY = 600;
      pY = MRUV(pY, vel, tempoPulo, 10);
    }
  }

  if (cenaSeis == true) {
    cena6();
    if  (pY >= 599) {
      cenaSeis = false;
      cenaCinco = true;
      pY = 2;
    }
    if (pY <= 25) {
      pY = 25;
    }
  }

  if (perso == true) {
    MEF();
    MEFPulo();
    mostraPerso(estadoPerso);
  }
  
    if (tuto == true) {
    image(tutorial, 0, 0);
  }

  if (creditos == true) {
    cenaSeis = false;
    image(telaCred, 0, 0);
  }
}

void telaInicial() {
  image(iniciar, 0, 0);
}

void mouseClicked() {
  if (inicio == true) {
    if (mouseX > 300 && mouseX< 500) {
      if (mouseY > 302 && mouseY< 363) {
        pX = 400;
        pY = 570;
        cenaUm = true;
        perso = true;
      }
      
      if (mouseY > 388 && mouseY< 439) {
        tuto = true;
        inicio = false;
      }
      
      if (mouseY > 474 && mouseY< 534) {
        creditos = true;
        inicio = false;
      }
    }
  }
  
  if (tuto == true){
    if (mouseX > 310 && mouseX< 488 && mouseY > 504 && mouseY< 565){
      inicio = true;
      tuto = false;
    }
  }
  
  if (creditos == true){
    if (mouseX > 310 && mouseX< 488 && mouseY > 504 && mouseY< 565){
      inicio = true;
      creditos = false;
    }
  }
}

void cena1() {
  image(cen1, 0, 0);

  plat0.desenha();
  plat0.colisao();
  plat1.desenha();
  plat1.colisao();
  plat2.desenha();
  plat2.colisao();
  plat3.desenha();
  plat3.colisao();
  plat4.desenha();
  plat4.colisao();
  plat5.desenha();
  plat5.colisao();
}

void cena2() {
  image(cen2, 0, 0);

  plat6.desenha();
  plat6.colisao();
  plat7.desenha();
  plat7.colisao();
  plat8.desenha();
  plat8.colisao();
  plat9.desenha();
  plat9.colisao();
  plat10.desenha();
  plat10.colisao();
  plat11.desenha();
  plat11.colisao();
  plat12.desenha();
  plat12.colisao();
}

void cena3() {
  image(cen3, 0, 0);

  plat15.desenha();
  plat15.colisao();
  plat16.desenha();
  plat16.colisao();
  plat17.desenha();
  plat17.colisao();
  plat18.desenha();
  plat18.colisao();
  plat19.desenha();
  plat19.colisao();
  plat20.desenha();
  plat20.colisao();
  plat21.desenha();
  plat21.colisao();
  plat22.desenha();
  plat22.colisao();
  plat13.desenha();
  plat13.colisao();
  plat14.desenha();
  plat14.colisao();
}


void cena4() {
  image(cen4, 0, 0);

  plat23.desenha();
  plat23.colisao();
  plat26.desenha();
  plat26.colisao();
  plat27.desenha();
  plat27.colisao();
  plat28.desenha();
  plat28.colisao();
  plat29.desenha();
  plat29.colisao();
  plat30.desenha();
  plat30.colisao();
  plat31.desenha();
  plat31.colisao();
  plat32.desenha();
  plat32.colisao();
  plat33.desenha();
  plat33.colisao();
  plat34.desenha();
  plat34.colisao();
  plat24.desenha();
  plat24.colisao();
  plat25.desenha();
  plat25.colisao();
}

void cena5() {
  image(cen5, 0, 0);

  plat37.desenha();
  plat37.colisao();
  plat38.desenha();
  plat38.colisao();
  plat39.desenha();
  plat39.colisao();
  plat40.desenha();
  plat40.colisao();
  plat41.desenha();
  plat41.colisao();
  plat42.desenha();
  plat42.colisao();
  plat43.desenha();
  plat43.colisao();
  plat44.desenha();
  plat44.colisao();
  plat45.desenha();
  plat45.colisao();
  plat46.desenha();
  plat46.colisao();
  plat35.desenha();
  plat35.colisao();
  plat36.desenha();
  plat36.colisao();
}

void cena6() {
  image(cen6, 0, 0);
  image(princesa, 570, 150);
  float dist = dist(pX, pY, 570, 150);

  plat47.desenha();
  plat47.colisao();
  plat48.desenha();
  plat48.colisao();
  plat49.desenha();
  plat49.colisao();
  plat50.desenha();
  plat50.colisao();
  plat51.desenha();
  plat51.colisao();
  plat35.desenha();
  plat35.colisao();
  plat36.desenha();
  plat36.colisao();
  
    if (dist <= 70){
    image(fim, 580, 90);
    
      if (keyCode == ENTER){
        creditos = true;
      }
  }
}
