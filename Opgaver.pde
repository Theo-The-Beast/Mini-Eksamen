class opgaver {

  boolean rigtig = false;
  boolean forkert = false;
  boolean tilbageTrykket = true;
  PImage hus;


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

    if (mousePressed) {
      if (mouseX>450 && mouseX <600 && mouseY>300 && mouseY <400) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>300 && mouseY <400) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>450 && mouseX <600 && mouseY>450 && mouseY <550) {
        rigtig = true;
        forkert = false;
      }

      if (mouseX>650 && mouseX <800 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }
    }
    if (forkert==true) {
      fill(255, 0, 0);
      text("Forkert svar", 620, 600);
      fill(255);
    }
    if (rigtig==true) {
      fill(0, 255, 0);
      text("Rigtigt svar\n Tryk på pilen og vælg en ny opgave", 620, 600);
      fill(255);
      nyOpgave();
    }


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

    if (mousePressed) {
      if (mouseX>450 && mouseX <600 && mouseY>300 && mouseY <400) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>300 && mouseY <400) {
        rigtig = true;
        forkert = false;
      }

      if (mouseX>450 && mouseX <600 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }
    }
    if (forkert==true) {
      fill(255, 0, 0);
      text("Forkert svar", 620, 600);
      fill(255);
    }
    if (rigtig==true) {
      fill(0, 255, 0);
      text("Rigtigt svar\n Tryk på pilen og vælg en ny opgave", 620, 600);
      fill(255);
      nyOpgave();
    }

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

    if (mousePressed) {
      if (mouseX>450 && mouseX <600 && mouseY>300 && mouseY <400) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>300 && mouseY <400) {
        rigtig = true;
        forkert = false;
      }

      if (mouseX>450 && mouseX <600 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }
    }
    if (forkert==true) {
      fill(255, 0, 0);
      text("Forkert svar", 620, 600);
      fill(255);
    }
    if (rigtig==true) {
      fill(0, 255, 0);
      text("Rigtigt svar\n Tryk på pilen og vælg en ny opgave", 620, 600);
      fill(255);
      nyOpgave();
    }

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

    if (mousePressed) {
      if (mouseX>450 && mouseX <600 && mouseY>300 && mouseY <400) {
        rigtig = true;
        forkert = false;
      }

      if (mouseX>650 && mouseX <800 && mouseY>300 && mouseY <400) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>450 && mouseX <600 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }

      if (mouseX>650 && mouseX <800 && mouseY>450 && mouseY <550) {
        rigtig = false;
        forkert = true;
      }
    }
    if (forkert==true) {
      fill(255, 0, 0);
      text("Forkert svar", 620, 600);
      fill(255);
    }
    if (rigtig==true) {
      fill(0, 255, 0);
      text("Rigtigt svar\n Tryk på pilen og vælg en ny opgave", 620, 600);
      fill(255);
      nyOpgave();
    }

    tilbage();
  }

  void tilbage() {
    hus = loadImage("Hus.png");

    rect(20, 20, 30, 30);
    textSize(20);
    fill(0);
    image(hus, 21, 21, 30, 30);

    if (mousePressed == true)
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        tilbageTrykket = true;
        rigtig=false;
        forkert=false;
      }
    if (tilbageTrykket == true) {
      LI.display();
    }
  }

  void nyOpgave() {

    fill(255);
    rect(850, 400, 60, 60);
    textSize(40);
    fill(0);
    text("->", 882, 440);

    if (mousePressed == true)
      if (mouseX >= 850 && mouseX <= 910 && mouseY >= 400 && mouseY <= 460) {
        tilbageTrykket = true;
        rigtig=false;
        forkert=false;
      }
    if (tilbageTrykket == true) {
      LI.display();
    }
  }
}
