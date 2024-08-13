import 'package:artfinal/screen/LoginPage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
             Image.asset(
            'assest/anan2.jpg',/
            fit: BoxFit.cover,
          ),
        
          Container(
            color: Colors.grey.withOpacity(0.5),
          ),
         
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assest/Logo.png",
                  height: 270,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "مركز عنان للعلاج بالفن",
                style: TextStyle(
                    color: Color.fromARGB(255, 243, 249, 243),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 0), 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'هنا لأجلكم للتنفيس عن مشاكلكم                        بفن وحب',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 243, 249, 243),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 70, 116, 70),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "اضغط هنا",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
