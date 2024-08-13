// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:artfinal/screen/Services2.dart';
import 'package:flutter/material.dart';


class Services extends StatelessWidget {
  List<String> Art = [
    "العلاج بالكتابة",
    "العلاج بالرسم والتلوين",
    "العلاج بالحركة",
    "العلاج بالموسيقى",
    "العلاج بالدراما"
  ];

  List<String> Art2 = ["المدخل", "المدخل2", "المدخل3"];

  List<Color> bigColor = [Color.fromARGB(255, 70, 116, 70)];

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assest/anan2.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100, 
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40, 
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 70, 116, 70),
                        size: 30,
                      ),
                      SizedBox(width: 10), 
                      Text(
                        "الرياض",
                        style: TextStyle(
                          color: Color.fromARGB(255, 70, 116, 70),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
          Positioned(
            top: 120, 
            left: 20,
            right: 20,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(123, 125, 167, 125),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "ابحث هنا",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Positioned(
                  right: 10, 
                  top: 8, 
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(
                            123, 125, 167, 125),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200, 
            left: 20,
            right: 20,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2, 
              height: 200, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                image: DecorationImage(
                  image: AssetImage("assest/m1.jpg"),
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          ),
          Positioned(
            top: 420, 
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "العلاجات",
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Services2()), 
                    );
                  },
                  child: Text(
                    "إظهار الكل",
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 470, 
            left: 20,
            right: 20,
            child: Container(
              height: 150, 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10), 
                  _buildItem('assest/H.jpg', 'العلاج بالحركة'),
                  SizedBox(width: 10),
                  _buildItem('assest/D.jpg', 'العلاج بالدراما'),
                  SizedBox(width: 10), 
                  _buildItem('assest/M.jpg', 'العلاج بالموسيقى'),
                  SizedBox(width: 10), 
                  _buildItem('assest/R.jpg', 'العلاج بالرسم'),
                  SizedBox(width: 10),
                  _buildItem('assest/K.jpg', 'العلاج بالكتابة'),
                  SizedBox(width: 10), 
                ],
              ),
            ),
          ),
          Positioned(
            top: 500, 
            left: 20,
            right: 20,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 120, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assest/Additional1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), 
                    Expanded(
                      child: Container(
                        height: 120, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assest/Additional2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 120, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assest/m.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String imagePath, String text) {
    return Container(
      width: 120, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100, 
            height: 100, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
