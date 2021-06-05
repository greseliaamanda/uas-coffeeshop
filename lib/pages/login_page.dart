import 'package:flutter/material.dart';
import 'package:proyek/pages/home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 120, 0, 0),
          child: Column(  
            children: [
              Text('kop!gres!',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[600].withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan Nama Anda',
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage(_name)));
                      },
                      child: Text('Masuk', style: TextStyle(color: Colors.white70),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black45.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}