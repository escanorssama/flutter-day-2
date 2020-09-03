import 'package:flutter/material.dart';


class ListItem extends StatelessWidget {
  ListItem(this.borderColor, this.title, this.judul);

  MaterialColor borderColor;
  String title;
  String judul;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        child: Row(
          children: [
            Container(height: 100, width: 10, color: borderColor,),
            Stack(
              children: <Widget>[
                Container(
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 100,
                      width: 150,
                      child: Image.network(
                        title,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )

              ],
            ),
            SizedBox(width: 8,),
            Text(judul, style: Theme.of(context).textTheme.headline6,),
          ],
        ),
      ),
    );
  }
}