class Input {
  String result = "";
  String result2 = "";
  int xPos = 100;
  int yPos = 100;
  int bredde;
  int hoejde;

  void input(int xPos, int yPos, int bredde, int hoejde) {
    fill(255); 
    textSize(32);
    text ("Login: \n"+result, xPos, yPos);
    text ("\n\n\nPassword:\n"+result2, xPos, yPos);
  }
  
  void keysViSkriver() {

    int len = input1.result.length(); 

    if (key == TAB) {
      enterTrykket = true;
    }

    if (enterTrykket == true) {
      result2 = result2+ key;
    } else {

      result = result + key;

      if (key == BACKSPACE) {
        result = result.substring(0, max(0, len-1));
      }
    }
  }
}
