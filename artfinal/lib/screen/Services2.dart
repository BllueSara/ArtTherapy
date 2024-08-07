 import 'package:flutter/material.dart';

class Services2 extends StatelessWidget {
  const Services2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // خلفية الصورة
        Opacity(
          opacity: 0.7, // شفافية الصورة
         child: Image.asset(
            'assest/anan2.jpg',
            fit: BoxFit.cover,
          ),
         ),
          // المحتوى فوق الخلفية
          Column(
            children: [
              // الصورة الأفقية في الأعلى
              Stack(
                children: [
 Positioned(
                    left: 0, // وضع السهم في الفراغ على اليسار
                    top: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context); // العودة إلى الصفحة السابقة
                      },
                    ),
                  ),
                  Container(
                    width: 300, // عرض الصورة الأفقية بالكامل
                    height: 150, // حجم الصورة الأفقية
                    margin: EdgeInsets.symmetric(vertical: 50), // تعديل الهوامش
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), // حواف دائرية
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
                    crossAxisCount: 2, // عدد الأعمدة في الشبكة
                    crossAxisSpacing: 5, // تقليل المسافة بين الأعمدة
                    mainAxisSpacing: 5, // تقليل المسافة بين الصفوف
                    childAspectRatio: 0.99, // نسبة عرض إلى ارتفاع العناصر
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
          width: 120, // عرض الصورة العمودية
          height: 120, // ارتفاع الصورة العمودية
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // حواف دائرية للصورة
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 4), // تقليل المسافة بين الصورة والنص
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14, // حجم النص
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}