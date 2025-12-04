import 'dart:io';

class Tache {
  String nom;
  bool faite;

  Tache(this.nom, {this.faite = false});
}

void main() {
  List<Tache> taches = [];
  bool continuer = true;

  while (continuer) {
    print('\n--- MENU ---');
    print('1. Ajouter une tâche');
    print('2. Voir les tâches');
    print('3. Marquer comme terminée');
    print('4. Quitter');
    stdout.write('Choix : ');

    var choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        stdout.write('Nom de la tâche : ');
        var nom = stdin.readLineSync();
        if (nom != null && nom.isNotEmpty) {
          taches.add(Tache(nom));
          print('Tâche ajoutée.');
        }
        break;

      case '2':
        print('\n--- Liste des tâches ---');
        for (var i = 0; i < taches.length; i++) {
          var t = taches[i];
          var statut = t.faite ? '[X]' : '[ ]';
          print('${i + 1}. $statut ${t.nom}');
        }
        break;

      case '3':
        stdout.write('Numéro de la tâche : ');
        var numero = int.tryParse(stdin.readLineSync() ?? '');
        if (numero != null && numero > 0 && numero <= taches.length) {
          taches[numero - 1].faite = true;
          print('Tâche mise à jour.');
        }
        break;

      case '4':
        continuer = false;
        break;

      default:
        print('Option invalide.');
    }
  }

  print('Programme terminé.');
}
