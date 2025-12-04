import 'dart:math';

class Mentor {
  String name;
  Mentor(this.name);
}

class Mentee {
  String name;
  Mentee(this.name);
}

void main() {
  var mentors = [
    Mentor('Jacque Uwonda'),
    Mentor('Kevin Kish'),
    Mentor('Nondine Israel'),
    Mentor('Georges Byona'),
  ];

  var mentees = [
    Mentee('David'),
    Mentee('Jonathan'),
    Mentee('Grace'),
    Mentee('Patrick'),
  ];

  var rand = Random();

  print('--- Assignations aléatoires ---');
  for (var mentor in mentors) {
    var mentee = mentees[rand.nextInt(mentees.length)];
    print('${mentor.name} → ${mentee.name}');
  }
}
