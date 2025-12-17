import 'package:flutter/material.dart';
import 'model/livre.dart';
import 'livre_details.dart';

class ListeLivre extends StatefulWidget {
  const ListeLivre({super.key});

  @override
  State<ListeLivre> createState() => _ListeLivreState();
}

class _ListeLivreState extends State<ListeLivre> {
  List<Livre> bibliotheque = [
    Livre("Dragon ball z", "Akira Toriyama", 1984, 42),
    Livre("Naruto", "Masashi Kishimoto", 2000, 123),
    Livre("Le Livre de JAVA", "Oumar Doumbia", 2015, 105),
    Livre("Solo Leveling", "Chu-Gong", 2020, 223),
    Livre("Jujutsu Kaisen", "Gege akutami", 2020, 1000),
  ];

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_library,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Text(
              'La Maison des Livres',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.separated(
          itemCount: bibliotheque.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final livre = bibliotheque[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LivreDetails(livre: livre)),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 3,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.deepOrangeAccent.withOpacity(0.1),
                        child: Icon(
                          Icons.menu_book,
                          size: 30,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),

                      const SizedBox(width: 12),
                      //Les Details des livres
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              livre.nom,
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Par ${livre.auteur} · ${livre.annee}',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      Text(
                        '${livre.nombreDePage} p.',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
