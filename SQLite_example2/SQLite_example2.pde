// fjenett 20120226

import de.bezier.data.sql.*;

SQLite db;

String loginBruger = "Lars";
String loginPassword = "Pass2";

void setup(){
  
  size( 100, 100 );

  db = new SQLite( this, "test.db" );  // open database file

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
