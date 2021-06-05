import 'package:flutter/material.dart';
import 'package:proyek/pages/detail_page.dart';
import 'package:proyek/model/cofee_list.dart';

class HomePage extends StatelessWidget {

  final String controller;
 
  HomePage(this.controller);

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
              height: 350,
              decoration: BoxDecoration(
                color: Colors.brown[300],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Column(
                  children: [
                    Text('Hai, $controller.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari',
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.brown,
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 2), 
                                )
                              ],
                            ),
                            child: Image.asset('images/kopi.jpg'),
                          ),                      
                        ],
                      ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: coffeList.length,
                        itemBuilder: (context, index){
                          final CoffeList kopi = coffeList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return DetailPage(kopi: kopi);
                              }));
                            },
                            child: Card(
                            child: ListTile(
                              leading: Image.asset(kopi.imageAsset),
                              title: Text(kopi.nama),
                              subtitle: Text('Rp. ' + kopi.harga, style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ),
                          );
                        }
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


