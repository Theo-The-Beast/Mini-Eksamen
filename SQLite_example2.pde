// fjenett 20120226
import de.bezier.data.sql.*;

SQLite db;

loggetInd LI = new loggetInd();
opgaver o = new opgaver();

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
  startpage();
  textAlign(LEFT);
  input1.input(100, 300, 0, 0);
  input2.input(100, 400, 0, 0);
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
    fill(255,0,0);
    textSize(20);
    text("Desværre - forkert brugernavn eller adgangskode", 50, 450);
    fill(0);
    textSize(36);
  }
}

void startpage(){
 textSize(36);
  fill(0,255,50);
  textAlign(CENTER);
  text("Velkommen \n Test din viden ved at logge ind nedenfor",650,100);
  fill(0,0,255);
  textSize(20);
  text("Tryk 'TAB' for at skrive Password",200,350);
  fill(0);
  textSize(36);
}
