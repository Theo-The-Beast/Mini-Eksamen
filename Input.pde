class Input {
  String result = "";
  int xPos = 100;
  int yPos = 100;
  int bredde;
  int hoejde;

  String label;

  Input(String label_) {
    label = label_;
  }

  void input(int xPos, int yPos, int bredde, int hoejde) {
    fill(255); 
    textSize(32);
    text (label+result, xPos, yPos);
    fill(0);
  }

  void keysViSkriver() {
    int len = result.length();
    if (key == ENTER) {
    } else {

      result = result + key;
      if (key == BACKSPACE )result = result.substring(0, max(0, len-1));
    }
  }
}
