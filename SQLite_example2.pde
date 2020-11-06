// fjenett 20120226
import de.bezier.data.sql.*;

SQLite db;

loggetInd LI = new loggetInd();

int i = 0;
int j = 0;
boolean login = false;
boolean tabTrykket = false;

String loginBruger = "Lars";
String loginPassword = "Pass1";

Input input1;
Input input2;

void setup() {
  size( 1300, 700 );

  input1 = new Input("Login: ");
  input2 = new Input("Password: ");


  db = new SQLite( this, "test.db" );  // open database file

//  println(login);

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
}

void draw() {
  clear();
  background(0);
  input1.input(100, 100, 0, 0);
  input2.input(100, 200, 0, 0);
  Enter();

  if (login == true) {
    background(0);
    LI.display();
    LI.musKlik();
  }
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
    text("Desværre - forkert brugernavn eller adgangskode", 30, 30);
  }
}
