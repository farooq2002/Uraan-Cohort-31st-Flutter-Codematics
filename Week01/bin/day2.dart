void main() {
//====================DAY 2 DART======================
//=====================CONDITIONAL EXPRESSIONS=============

  int teamOne = 180;
  int teamtwo = 190;

  String winMatch;

  winMatch = teamOne > teamtwo ? "team one won!" : "Team Two won!";

  print(winMatch);

  // ========EXPRESSION 1 : EXPRESSION 2 ==============

  var player = null;

  String playerToPlay = player ?? "Babar Azam";

  print(playerToPlay);

  //===========SWITCH CASE STATEMENTS===================
//===========applicable for only int and string=========
  String grade = "C";
  switch (grade) {
    case "A":
      {
        print("Exellent you got A grade");
      }
      break;
    case "B":
      {
        print('you got B grade');
      }
      break;
    case "C":
      {
        print('you got C grade');
      }
      break;
    case "D":
      {
        print('you got D grade');
      }
      break;
    default:
      {
        print('you got  grade');
      }
      break;
  }

  // ********************iterators and loops********************
  //=========FOR LOOP=============

  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  //==========FOR IN LOOP==========

  List planetList = ["MERCURY", "VENUS", "MARS", "EARTH"];
  for (String planet in planetList) {
    print("the planet name is $planet");
  }

  //===========WHILE LOOP=========
  var i = 0;
  while (i < 4) {
    if (i % 2 == 0) {
      print(i);
    }

    i++;
  }

  //============DO-WHILE LOOP==========

  var coder = 3;
  int g = 1;
  do {
    print('i am flutter developer');
    g++;
  } while (g <= coder);

  // --------------BREAK ==================
  //==============LABELS===================
  //=========nested for loops========

  parentLoop:
  for (int i = 0; i < 5; i++) {
    childLoop:
    for (int k = 0; k < 5; k++) {
      print("$i  $k");
      if (k == 5 && i == 5) {
        break parentLoop;
      }
    }
  }
}
