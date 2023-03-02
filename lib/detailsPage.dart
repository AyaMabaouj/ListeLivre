import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String bookTitle;
  final String bookImage;
  final String bookDescription;
  final double bookPrice;
  final String bookAuthor;

  const DetailPage({
    Key? key,
    required this.bookTitle,
    required this.bookImage,
    required this.bookDescription,
    required this.bookPrice,
    required this.bookAuthor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Détails du livre')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/$bookImage'),
                height: 150,
              ),
              const SizedBox(height: 20),
              Text(
                bookTitle,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Auteur: $bookAuthor',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Prix: $bookPrice',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                bookDescription,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Ajouter le code pour ajouter le livre à la carte ici
                },
                child: const Text('Ajouter à la carte'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
