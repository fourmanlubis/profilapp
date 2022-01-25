import 'package:flutter/material.dart';
import 'package:profilapp/models/profil.dart';

class CardProfil extends StatelessWidget {
  final Profil profil;
  const CardProfil({Key? key, required this.profil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Hero(
                tag: profil.id,
                child: Image.asset("assets/images/${profil.id}.jpg")),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  profil.nama,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                Icon(
                  profil.favorit ? Icons.favorite : Icons.favorite_outline,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
