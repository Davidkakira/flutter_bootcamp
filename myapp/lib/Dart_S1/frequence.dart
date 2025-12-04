import 'dart:io';

void main() {
  print('Entrez une phrase :');
  var phrase = stdin.readLineSync() ?? '';

  var nettoyee = phrase.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '');

  var mots = nettoyee.split(' ').where((m) => m.isNotEmpty).toList();

  Map<String, int> freq = {};

  for (var mot in mots) {
    freq[mot] = (freq[mot] ?? 0) + 1;
  }

  print('\n--- Fréquence des mots ---');
  freq.forEach((mot, count) {
    print('$mot : $count');
  });
}
