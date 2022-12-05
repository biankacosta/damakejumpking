class Plataformas {

  PVector loc;
  int TamX, TamY;

  Plataformas(int x, int y, int tamX, int tamY) {
    stroke(29, 51, 45);
    loc = new PVector(x, y);
    TamX = tamX;
    TamY = tamY;
  }

  void desenha() {
    rectMode(CENTER);
    fill(29, 51, 22);
    rect(loc.x, loc.y, TamX, TamY);
  }
  void colisao() {
    //esq
    if (loc.y + TamY/2 >= pY+13 && loc.y - TamY/2 <= pY-13) {
      if (pX + 22 >= loc.x - TamX/2 && pX - 22 <= loc.x ) {
        if (pulo)
          travePulo = 4;
        else pX = loc.x - TamX/2-22;
      }
      //dir
      if (pX - 22 <= loc.x + TamX/2 && pX + 22 >= loc.x) {
        if (pulo)
          travePulo = 3;
        else pX = loc.x + TamX/2+22;
      }
    }
    //cima
    else if (loc.x + TamX/2 >= pX-25 && loc.x - TamX/2 <= pX+25) {
      if (pY+25 >= loc.y-TamY/2 && pY-25 <= loc.y) {
        pY = loc.y-TamY/2-25.001;
        contador = 0;
        pulo = false;
        tempoPulo = 0;
        tempoGrav = 0;
        travePulo = 0;
        limite = 0;
      }
      //baixo
      else if (pY-25 <= loc.y+TamY/2 && pY+25 >= loc.y) {
        contador = 2;
        tempoGrav = 0;
      }
    }
  }
}
