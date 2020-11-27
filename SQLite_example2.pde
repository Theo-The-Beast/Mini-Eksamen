// fjenett 20120226
import de.bezier.data.sql.*;

SQLite db;

loggetInd LI = new loggetInd();
opgaver o = new opgaver();

int i = 0;
int j = 0;
boolean login = false;
boolean tabTrykket = false;
boolean isFocused = false;

String loginBruger = "Lars";
String loginPassword = "Pass1";
PFont Helvetica;

Input input1;
Input input2;

void setup() {
  size( 1300, 700 );

  input1 = new Input("Login: ");
  input2 = new Input("Password: ");
  isFocused = true;


  db = new SQLite( this, "test.db" );  // open database file

  //println(login);

  if ( db.connect() )
  {

    db.query( "SELECT * FROM Persons" );

    while (db.next())
    {

      String PID =db.getString("PersonID");
      //println("PersonID:  "+PID);
      String LN =db.getString("LastName");
      //println("Lastname:  "+LN);
      String PW =db.getString("Password");
      //println("Password:  "+PW+"\n");
    }
  }

  Helvetica = createFont("HelveticaLTStd-Bold.otf", 32);
}

void draw() {
  clear();
  background( 255, 195, 0 );
  startpage();
  textAlign(LEFT);
  input1.input(100, 400, 0, 0);
  input2.input(100, 500, 0, 0);
  Enter();

  if (login == true) {
    background(0);
    LI.display();
    LI.musKlik();
  }



  LI.hvilkenOPG();
  //println(LI.plus);
  //println(LI.minus);
  //println(LI.gange);
  //println(LI.division);
}

void keyTyped() {


  if (key == TAB) {
    tabTrykket = true;
  }

  if (tabTrykket == true) {
    input2.keysViSkriver();
  } else {
    input1.keysViSkriver();
  }
}
void Enter() {
  if (key == ENTER || key == RETURN) {
    //Gør mere overskuelig
    if (input1.result.equals(loginBruger) && input2.result.substring(1).equals(loginPassword)) {
      login = true;
    } else {
      login = false;
    }
  }
  if (key == ENTER || key == RETURN && login == false) {
    fill(255, 0, 0);
    textSize(20);
    text("Desværre - forkert brugernavn eller adgangskode", 100, 550);
    fill(0);
    textSize(36);
  }
}

void startpage() {
  textFont(Helvetica);
  textSize(100);
  fill(0);
  textAlign(LEFT);
  text("Log Ind", 100, 150);
  textSize(30);
  text("Test din viden ved at\nlogge ind nedenfor", 100, 250);
  fill(0);
  textSize(20);
  text("Tryk 'TAB' for at skrive Password", 100, 450);
  fill(0);
  textSize(36);
}

String blinkChar() {
  return isFocused && (frameCount>>2 & 1) == 0 ? "_" : "";
}
