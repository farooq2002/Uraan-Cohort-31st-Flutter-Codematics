void main() {
  //==============Number :integer======================
  int runs = 255;
  var matchScore = 200;
  //=================String : name=====================
  String name = "Farooq Ahmad";
  var projectName = "uraan";
  //=============booleans====================
  bool isActive = true;
  var isDead = false;
  //==============double : percetage====================

  double percentage = 85.87;
  var length = 76.67;
//===================EXPONENTIAL VALUE + HEX CODE VAUE================
  var exponentialValue = 23e5;
  var haxCode = 0xEADEBAEE;

  print("THE SCORE IS $runs");
  print("THE MATCH SCORE IS $matchScore");
  print("MY NAME IS $name");
  print("The internship is provided by $projectName");
  print(isActive);
  print(isDead);
  print(percentage);
  print(exponentialValue);
  print(haxCode);

  // ==========STRING LITERALS AND STRING INTERPOLATION====================

  'farooq';
  4.6;
  false;
  2;
  //or
  String profileName = "farooq";
  double cgpa = 4.6;
  bool isOnline = true;
  int rollNumber = 2;
  String s1 = 'Code';
  String s2 = "uraan";
  String s3 = 'it\'s easy';
  String s4 = "it's easy";
  String s5 = "Today is my first class at uraan " + "Flutter cohort 31st";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print(s5);

  //==============STRING INTERPOLATION ===================

  String actorName = "Tom hardy";
  print("My favorite actor is " + actorName);
  //or
  print("My favorite actor is $actorName");
  print("My favorite actor is ${actorName.toUpperCase()}");
  print("My favorite actor is ${actorName.toLowerCase()}"); // good convention
  print("Actor name  ${actorName.length}");
//========== CONTROL FLOW STATEMENTS====================

  int days = 60;
  if (days >= 55) {
    print("Congratulation you have successfully completed 2 months");
  } else {
    print('Try next time ');
  }

  //==========================================
  int marks = 843;

  if (marks > 900 && marks < 1100) {
    print("A+ garde ");
  } else if (marks > 800 && marks < 900) {
    print("A grade");
  } else if (marks > 700 && marks < 800) {
    print("B GRADE");
  }
}
