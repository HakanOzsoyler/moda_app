import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'AnaFont'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.black,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Moda Uygulaması'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          // Üst taraftaki profil listesi
          Container(
            padding: EdgeInsets.only(top: 10),
            // color: Colors.red.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(width: 25),
                listeElemani(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(width: 25),
                listeElemani('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(width: 25),
                listeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(width: 25),
                listeElemani(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(width: 25),
                listeElemani('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
              ],
            ),
          ),
          //Card
          Padding(
            padding: EdgeInsets.all(15),
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 500,
                child: Column(
                  children: [
                    // ilk eleman
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '34 mins ago',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // yazı elamanı
                    Text(
                      'Glucose is the fundamental thing that burns energy in our bodies.' +
                          'We get glucose from the foods we eat',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imgPath: 'assets/images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.brown.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              '# Louis vultton',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.brown.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.grey,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '1.7k',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '325',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 5),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2.3k',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 75,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.brown),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
