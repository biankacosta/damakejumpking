boolean lado = false, ladoE = false, ladoD = false, space = false, pulo = false;
float tempoPulo, tempoGrav, vel, contador, travePulo, limite;
int contMudarEsq = 0, contMudarDir = 0;

final int PARADOdir = 0;
final int PARADOesq = 1;
final int DIREITA = 2;
final int ESQUERDA = 3;
final int PULO = 4;
final int PULANDO = 5;

float pX = 400;
float pY = 570;
int estadoPerso = PARADOdir;

//class Perso

void keyPressed() {
  if (keyCode == LEFT) {
    lado = true;
    ladoE = true;
    contMudarEsq++;
  }
  if (keyCode == RIGHT) {
    lado = false;
    ladoD = true;
    contMudarDir++;
  }
  if (keyCode == ' ') space = true;
}

void keyReleased() {
  if (keyCode == LEFT) {
    ladoE = false;
    contMudarEsq = 0;
  }
  if (keyCode == RIGHT) {
    ladoD = false;
    contMudarDir = 0;
  }
  if (keyCode == ' ') {
    space = false;
  }
}

void MEF() {
  if (space) {
    estadoPerso = PULO;
    contador = 1;
    vel-=13.5/60;
  } else if (pulo == false) {
    if (ladoD) {
      estadoPerso = DIREITA;
      pX += 3;
    } else if (ladoE) {
      estadoPerso = ESQUERDA;
      pX -= 3;
    } else if (lado) {
      estadoPerso = PARADOesq;
    } else if (lado == false) {
      estadoPerso = PARADOdir;
    }
  }
}


void mostraPerso(int estado) {
  if (estado == PARADOdir) {
    image(cavPD, pX-22.5, pY-25);
  } else if (estado == PARADOesq) {
    image(cavPE, pX-22.5, pY-25);
  } else if (estado == DIREITA) {
    if (contMudarDir%8 < 4) {
    image(cavD, pX-22.5, pY-25);
    } else {
      image(cavPD, pX-22.5, pY-25);
    }
  } else if (estado == ESQUERDA) {
    if (contMudarEsq%8 < 4) {
    image(cavE, pX-22.5, pY-25);
    } else {
      image(cavPE, pX-22.5, pY-25);
    }
  } else if (estado == PULO) {
    image(cavPulo, pX-22.5, pY-25);
  } else if (estado == PULANDO) {
    image(cavPulando, pX-22.5, pY-25);
  }
}


float MRU (float s, float v, float t) {
  float d = s+v*t;
  return d;
}
float MRUV (float s, float v, float t, float a) {
  float d = s+(v*t+(a/2*sq(t)));
  return d;
}
void MEFPulo() {
  if (space == false) {
    pulo = true;
  }
  if (vel <= -13.5) vel = -13.5;
  if (contador == 1) {
    if (pulo) {
      estadoPerso = PULANDO;
      pY = MRUV(pY, vel, tempoPulo, 10);
      tempoPulo+=0.06;
      limite+=0.1;
      if (!(travePulo == 2 || travePulo == 3 || travePulo == 4) && limite<0.2) {
        if (ladoD) {
          travePulo = 1;
        }
      }
      if (!(travePulo == 1 || travePulo == 3 || travePulo == 4) && limite<0.2) {
        if (ladoE) {
          travePulo = 2;
        }
      }
    }
  }
  if (contador == 1 || contador == 2) {
    if (travePulo == 1) {

      pX = MRU(pX, 2.7, tempoPulo);
    } else if (travePulo == 2) {
      pX = MRU(pX, -2.7, tempoPulo);
    } else if (travePulo == 3) {
      pX = MRU(pX, 1.5, tempoPulo);
    } else if (travePulo == 4) {
      pX = MRU(pX, -1.5, tempoPulo);
    }
  }
  if (contador == 0) {
    vel = 0;
    pY = MRUV(pY, +13.5, tempoGrav, 10);
    tempoGrav+=0.06;
  }
  if (contador == 2) {
    pY = MRUV(pY, -vel/2, tempoPulo, 3);
  }
}
