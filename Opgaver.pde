class opgaver {

  boolean Box1 = false;
  boolean Box2 = false;
  boolean Box3 = false;
  boolean Box4 = false;
  boolean tilbageTrykket = false;



  void plus() {

    rect(0, 0, 1300, 700);
    fill(255);
    textSize(50);
    text("Hvad er 5 + 5?", 625, 200);

    rect(450, 300, 150, 100);
    fill(0);
    text("30", 525, 365);
    fill(255);

    rect(650, 300, 150, 100);
    fill(0);
    text("20", 725, 365);
    fill(255);

    rect(450, 450, 150, 100);
    fill(0);
    text("10", 525, 515);
    fill(255);

    rect(650, 450, 150, 100);
    fill(0);
    text("9", 730, 515);
    fill(255);
    tilbage();
  }

  void minus() {

    fill(0);
    rect(0, 0, 1300, 700);
    fill(255);
    textSize(50);
    text("Hvad er 20 - 15?", 620, 200);

    rect(450, 300, 150, 100);
    fill(0);
    text("10", 520, 365);
    fill(255);

    rect(650, 300, 150, 100);
    fill(0);
    text("5", 720, 365);
    fill(255);

    rect(450, 450, 150, 100);
    fill(0);
    text("328", 520, 515);
    fill(255);

    rect(650, 450, 150, 100);
    fill(0);
    text("13", 715, 515);
    fill(255);
    tilbage();
  }

  void division() {

    fill(0);
    rect(0, 0, 1300, 700);
    fill(255);
    textSize(50);
    text("Hvad er 200 / 10?", 625, 200);

    rect(450, 300, 150, 100);
    fill(0);
    text("20", 520, 365);
    fill(255);

    rect(650, 300, 150, 100);
    fill(0);
    text("10", 720, 365);
    fill(255);

    rect(450, 450, 150, 100);
    fill(0);
    text("15", 520, 515);
    fill(255);

    rect(650, 450, 150, 100);
    fill(0);
    text("7", 720, 515);
    fill(255);
    tilbage();
  }

  void gange() {

    fill(0);
    rect(0, 0, 1300, 700);
    fill(255);
    textSize(50);
    text("Hvad er 3 * 10?", 625, 200);

    rect(450, 300, 150, 100);
    fill(0);
    text("20", 520, 365);
    fill(255);

    rect(650, 300, 150, 100);
    fill(0);
    text("30", 720, 365);
    fill(255);

    rect(450, 450, 150, 100);
    fill(0);
    text("56", 520, 515);
    fill(255);

    rect(650, 450, 150, 100);
    fill(0);
    text("8", 720, 515);
    fill(255);
    tilbage();
  }

  void musKlikPlus() {
    if (mousePressed) {
      if (mouseX>450 && mouseX <450+150 && mouseY>300 && mouseY <300+100) {
        Box1 = true;
      } else {
        Box1 = false;
      }
      if (mouseX>450 && mouseX <450+150 && mouseY>300 && mouseY <300+100) {
        Box1 = true;
      } else {
        Box1 = false;
      }
    }
  }

  void tilbage() {
    rect(20, 20, 30, 30);
    textSize(20);
    fill(0);
    text("X", 35, 42);

    if (mousePressed == true)
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        tilbageTrykket = true;
      }
    if (tilbageTrykket == true) {
      LI.display();
    }
  }
}
