import 'package:flutter/material.dart';
import 'package:recepie_app/cards/circle_image.dart';


class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({super.key,
  required this.authorName,
  required this.title,
  this.imageProvider,
  });

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
   bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
          children: [
            CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
            ),
            const SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],

            )
          ],
          ),
IconButton(
  onPressed: () { 
// 3 
    setState(() { 
      _isFavorited = !_isFavorited; 
    }); 
  }, 
  icon: Icon(_isFavorited ? Icons.favorite : 
Icons.favorite_border), 
  iconSize: 30,
  color: Colors.red[400], 
)
        ],
      ),

    );
  }
}