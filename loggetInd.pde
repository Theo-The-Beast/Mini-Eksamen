class loggetInd {
  float r = 0;
  float rSpeed = 1.1;
  float g = 0;
  float gSpeed = 1.2;
  float b = 0;
  float bSpeed = 1.3;

  boolean plus = false;
  boolean minus = false;
  boolean gange = false;
  boolean division = false;


  void display() {
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

    rect(0, 0, 1800, 700);
    fill(r, g, b);
    textSize(100);
    textAlign(CENTER);

    text("Velkommen", width/2, height/5);
    fill(255);
    textSize(30);
    text("Til vores herre nice matematikprogram", width/2, height/3.5);
    fill(100);
    rect(100, 300, 400, 100);
    rect(1200, 300, -400, 100);
    rect(100, 500, 400, 100);
    rect(1200, 500, -400, 100);
    fill(r*10, g*10, b*10);
    text("Plus", 300, 350);
    text("Minus", 1000, 350);
    text("Gange", 300, 550);
    text("Division", 1000, 550);
    fill(0);
  }

  void musKlik() {
    if (mousePressed) {
      if (mouseX>100 && mouseX <100 + 400 && mouseY>300 && mouseY <300+100) {
        plus = true;
      }

      if (mouseX>800 && mouseX <1200 && mouseY>300 && mouseY <300+100) {
        minus = true;
      }

      if (mouseX>100 && mouseX <100 + 400 && mouseY>500 && mouseY <600) {
        gange = true;
      }

      if (mouseX>800 && mouseX <1200 && mouseY>500 && mouseY <600) {
        division = true;
      }
    }
  }

  void hvilkenOPG() {

    if (plus = true) {
      //start opgaven
    }
    if (minus = true) {
      //start opgaven
    }
    if (gange = true) {
      //start opgaven
    }
    if (division = true) {
      //start opgaven
    }
  }
}
