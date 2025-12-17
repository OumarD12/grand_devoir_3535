import 'package:flutter/material.dart';
import 'model/livre.dart';

class LivreDetails extends StatelessWidget {
  final Livre livre;
  const LivreDetails({super.key, required this.livre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          livre.nom,
          style: const TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Colors.deepOrangeAccent.withOpacity(0.1),
                child: Icon(
                  Icons.menu_book,
                  size: 48,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Titre: ${livre.nom}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.white, 
              ),
            ),
            const SizedBox(height: 8),
            Text('Auteur: ${livre.auteur}', style: const TextStyle(fontSize: 16, color: Colors.white),),
            const SizedBox(height: 8),
            Text('Année: ${livre.annee}', style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 8),
            Text('Pages: ${livre.nombreDePage}', style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
