import 'dart:io';

void main() {
  print('Entrez le premier nombre :');
  var inputA = stdin.readLineSync();
  double a = double.parse(inputA!);

  print('Entrez le deuxième nombre :');
  var inputB = stdin.readLineSync();
  double b = double.parse(inputB!);

  print('\n--- Résultats ---');
  print('Somme : ${a + b}');
  print('Différence : ${a - b}');
  print('Produit : ${a * b}');
  print('Quotient : ${a / b}');
}
