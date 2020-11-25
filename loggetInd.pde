class loggetInd {

  boolean plus = false;
  boolean minus = false;
  boolean gange = false;
  boolean division = false;

  float r = 0;
  float rSpeed = 1.1;
  float g = 0;
  float gSpeed = 1.2;
  float b = 0;
  float bSpeed = 1.3;


  void display() {

    int fillr1 = 0;
    int fillg1 = 0;
    int fillb1 = 0;
    int fillr2 = 0;
    int fillg2 = 0;
    int fillb2 = 0;
    int fillr3 = 0;
    int fillg3 = 0;
    int fillb3 = 0;
    int fillr4 = 0;
    int fillg4 = 0;
    int fillb4 = 0;

    r = r+ rSpeed;
    g = g+ gSpeed;
    b = b+ bSpeed;


    if (r >= 255) {
      r = rSpeed*-1;
    } else if (g >= 255) {
      g = gSpeed*-1;
    } else if (b >= 255) {
      b = bSpeed*-1;
    }

    if (mouseX>100 && mouseX <100 + 400 && mouseY>300 && mouseY <300+100) {
      fillr1 = 255;
      fillg1 = 0;
      fillb1 = 0;
    } else {
      fillr1 = 70;
      fillg1 = 50;
      fillb1 = 204;
    }

    if (mouseX>800 && mouseX <1200 && mouseY>300 && mouseY <300+100) {
      fillr2 = 255;
      fillg2 = 0;
      fillb2 = 0;
    } else {
      fillr2 = 70;
      fillg2 = 50;
      fillb2 = 204;
    }

    if (mouseX>100 && mouseX <100 + 400 && mouseY>500 && mouseY <600) {
      fillr3 = 255;
      fillg3 = 0;
      fillb3 = 0;
    } else {
      fillr3 = 70;
      fillg3 = 50;
      fillb3 = 204;
    }

    if (mouseX>800 && mouseX <1200 && mouseY>500 && mouseY <600) {
      fillr4 = 255;
      fillg4 = 0;
      fillb4 = 0;
    } else {
      fillr4 = 70;
      fillg4 = 50;
      fillb4 = 204;
    }
    noStroke();
    fill(70, 60, 204);
    rect(0, 0, 1800, 700);
    fill(r, g, b);
    textSize(100);
    textAlign(CENTER);
    text("Velkommen", width/2, height/5);
    fill(255);
    textSize(30);
    text("Til vores herre nice matematikprogram", width/2, height/3.5);
    fill(fillr1, fillg1, fillb1);
    rect(100, 300, 400, 100);
    fill(fillr2, fillg2, fillb2);
    rect(1200, 300, -400, 100);
    fill(fillr3, fillg3, fillb3);
    rect(100, 500, 400, 100);
    fill(fillr4, fillg4, fillb4);
    rect(1200, 500, -400, 100);
    fill(0, 0, 0);
    fill(r*10, g*10, b*10);
    text("Plus", 300, 350);
    text("Minus", 1000, 350);
    text("Gange", 300, 550);
    text("Division", 1000, 550);
    fill(0);
  }

  void musKlik() {


    if (mousePressed) {
      if (mouseX>100 && mouseX <100 + 400 && mouseY>300 && mouseY <300+100 && o.tilbageTrykket == true) {
        plus = true;
        minus = false;
        gange = false;
        division = false;
        o.tilbageTrykket = false;
      }

      if (mouseX>800 && mouseX <1200 && mouseY>300 && mouseY <300+100 && o.tilbageTrykket == true) {
        minus = true;
        gange = false;
        division = false;
        plus = false; 
        o.tilbageTrykket = false;
      }

      if (mouseX>100 && mouseX <100 + 400 && mouseY>500 && mouseY <600 && o.tilbageTrykket == true) {
        gange = true;
        plus = false;
        minus = false;
        division = false;
        o.tilbageTrykket = false;
      }

      if (mouseX>800 && mouseX <1200 && mouseY>500 && mouseY <600 && o.tilbageTrykket == true) {
        plus = false;
        minus = false;
        gange = false;
        division = true;
        o.tilbageTrykket = false;
      }
    }
  }

  void hvilkenOPG() {

    if (plus == true) {
      o.plus();
    }
    if (minus == true) {
      o.minus();
    }
    if (gange == true) {
      o.gange();
    }
    if (division == true) {
      o.division();
    }
  }
}
