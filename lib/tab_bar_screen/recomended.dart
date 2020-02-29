import 'package:flutter/material.dart';
import 'package:stylist/screens/filter.dart';
import 'package:stylist/screens/product.dart';

class Recomended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('#trend'),
                  Text('#trend'),
                  Text('#trend'),
                  Text('#trend'),
                  Text('#trend'),
                  Text('#trend'),
                  Text('#trend'),
                ],
              ),
              ListTile(
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Filter'),
                    IconButton(
                      icon: Icon(
                        Icons.filter_list,
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Filter(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _BuildListGrid(),
    );
  }
}

List<String> photos = [
  'assert/A.jpg',
  'assert/B.jpg',
  'assert/C.jpg',
  'assert/D.jpg'
];

class _BuildListGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
      itemBuilder: (context, position) {
        return _BuildGrid(img: photos[position]);
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}

class _BuildGrid extends StatelessWidget {
  final String img;
  _BuildGrid({this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                InkWell(
                  child: Image.asset(img),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Product(
                          photo: img,
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  child: Icon(
                    Icons.done_outline,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  width: 100,
                  height: 100,
                ),
              ],
            ),
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
    );
  }
}
