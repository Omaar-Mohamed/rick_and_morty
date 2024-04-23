import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CharItem extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  const CharItem({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imageUrl.toString(),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
             Expanded(
              child: Text(
                name.toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
