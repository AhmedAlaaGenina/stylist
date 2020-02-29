import 'package:flutter/material.dart';
import 'package:stylist/screens/product.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BuildList(),
    );
  }
}

List<String> photos = [
  'assert/A.jpg',
  'assert/B.jpg',
  'assert/C.jpg',
  'assert/D.jpg'
];

class _BuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, position) {
        return _BuildCard(
          img: photos[position],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Product(
                  photo: photos[position],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _BuildCard extends StatelessWidget {
  final String img;
  final Function onTap;
  _BuildCard({this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                InkWell(
                  child: Image.asset(img),
                  onTap: onTap,
                ),
                Container(
                  child: Icon(
                    Icons.done_outline,
                    size: 80,
                    color: Colors.amberAccent,
                  ),
                  width: 100,
                  height: 100,
                )
              ],
            ),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite),
                  IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
