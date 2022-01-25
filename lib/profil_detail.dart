import 'package:flutter/material.dart';
import 'package:profilapp/models/profil.dart';

class profilDetail extends StatefulWidget {
  final Profil profil;
  const profilDetail({Key? key, required this.profil}) : super(key: key);

  @override
  State<profilDetail> createState() => _profilDetailState();
}

class _profilDetailState extends State<profilDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.profil.nama),
      ),
      body: Column(
        children: [
          Hero(
              tag: widget.profil.id,
              child: Image.asset("assets/images/${widget.profil.id}.jpg")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.profil.nama,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.profil.favorit = !widget.profil.favorit;
                      });
                    },
                    icon: Icon(
                      widget.profil.favorit
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: Colors.red,
                      size: 30,
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: widget.profil.biografi.length,
                itemBuilder: (BuildContext context, int index) {
                  final biografi = widget.profil.biografi[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${biografi.nama} ${biografi.alamat}",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
