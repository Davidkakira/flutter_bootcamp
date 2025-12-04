void main() {
  List<String> mentors = [
    'Jacque Uwonda',
    'Kevin Kish',
    'Nondine Israel',
    'Georges Byona',
  ];

  mentors.sort();
  print('--- Mentors en majuscules ---');
  for (var m in mentors) {
    print(m.toUpperCase());
  }
}
