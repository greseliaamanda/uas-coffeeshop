import 'package:flutter/material.dart';
import 'package:proyek/model/cofee_list.dart';

class DetailPage extends StatefulWidget {

  final CoffeList kopi;
 
  DetailPage({this.kopi});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.kopi.imageAsset),
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: EdgeInsets.all(40),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "COFFEE",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(widget.kopi.nama, style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10),
                    Text(widget.kopi.deskripsi, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey),),
                    SizedBox(height: 10),
                    Text('Rp. '+widget.kopi.harga, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(
                          color: Colors.brown[300],
                          style: BorderStyle.solid,
                        )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                            setState(() {
                              _counter++;
                            });
                          },  
                          child: Text("+", style: TextStyle(color: Colors.brown[300]),)),
                          Text('$_counter'),
                          TextButton(onPressed: () {
                            setState(() {
                              _counter--;
                            });
                          }, 
                          child: Text("-", style: TextStyle(color: Colors.brown[300]),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown[300],
                        ),
                        onPressed: () {},
                        child: Text("Masukkan keranjang",style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
