// fjenett 20120226
import de.bezier.data.sql.*;

SQLite db;

int i = 0;
int j = 0;
boolean login = false;
boolean enterTrykket = false;

String loginBruger = "Lars";
String loginPassword = "Pass1";

Input input1;
Input input2;

void setup() {
  size( 1800, 500 );

  input1 = new Input();
  input2 = new Input();

  db = new SQLite( this, "test.db" );  // open database file

  if (loginBruger == "Lars" && loginPassword == "Pass1") {
    login = true;
  } else {
    login = false;
  }
  println(login);

  if ( db.connect() )
  {

    db.query( "SELECT * FROM Persons" );

    while (db.next())
    {

      String PID =db.getString("PersonID");
      println("PersonID:  "+PID);
      String LN =db.getString("LastName");
      println("Lastname:  "+LN);
      String PW =db.getString("Password");
      println("Password:  "+PW+"\n");
    }
  }
}

void draw() {
  clear();
  input1.input(100, 100, 0, 0);
  
   println("result1: "+input1.result);
   // println("result2"+input2.result2);
    //println(enterTrykket);
    //println(i);
    //println(j);
}

void keyPressed(){
  input1.keysViSkriver();
}
