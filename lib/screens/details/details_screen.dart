import 'package:flutter/material.dart';
import 'package:iti_final_project/screens/details/product_screen.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/icon-04.png"),
        ),
        actions: [
          Row(
            children: <Widget>[
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Colors.black),
              ),
              Image.asset(
                "assets/icons/icon-05.png",
                width: 30,
                height: 30,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.65),
                itemBuilder: (context, index) => getGridview(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 60, right: 60),
              child: Text(
                "Scan my Space",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              color: Color(0xFF9FA8DA),
              textColor: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget getGridview() {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage("assets/images/image-03.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Align(
                  child: Image.asset(
                    "assets/icons/icon-02.png",
                    width: 50,
                    height: 50,
                  ),
                  alignment: Alignment.topLeft,
                ),
                Text(
                  "Chairs",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Text(
                  "from\$190.-",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          RaisedButton(
            color: Colors.indigo[200], // background
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)), // foreground
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => ProductScreen()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              '     Create Account     ',
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
          ),
        ],
      ),
    );
  }
}
