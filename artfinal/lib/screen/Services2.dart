 import 'package:flutter/material.dart';

class Services2 extends StatelessWidget {
  const Services2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Opacity(
          opacity: 0.7, 
         child: Image.asset(
            'assest/anan2.jpg',
            fit: BoxFit.cover,
          ),
         ),
          Column(
            children: [
              Stack(
                children: [
 Positioned(
                    left: 0, 
                    top: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                    ),
                  ),
                  Container(
                    width: 300, 
                    height: 150, 
                    margin: EdgeInsets.symmetric(vertical: 50), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), 
                      image: DecorationImage(
                        image: AssetImage('assest/mw.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                 
                ],
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5, 
                    mainAxisSpacing: 5, 
                    childAspectRatio: 0.99, 
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final List<String> imagePaths = [
                      'assest/H.jpg',
                      'assest/D.jpg',
                      'assest/M.jpg',
                      'assest/R.jpg',
                      'assest/K.jpg'
                    ];
                    final List<String> titles = [
                      'العلاج بالحركة',
                      'العلاج بالدراما',
                      'العلاج بالموسيقى',
                      'العلاج بالرسم',
                      'العلاج بالكتابة'
                    ];
                    return _buildVerticalImageItem(
                      imagePaths[index],
                      titles[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalImageItem(String imagePath, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120, 
          height: 120, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 4), 
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14, 
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
