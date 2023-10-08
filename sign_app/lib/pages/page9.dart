import 'package:flutter/material.dart';
import 'package:sign_app/pages/page10.dart';
import 'package:sign_app/pages/sign_up_screen.dart';
import 'package:sign_app/pages/splash_screen.dart';

class page9 extends StatefulWidget {
  const page9({super.key});

  @override
  State<page9> createState() => _page9State();
}

class _page9State extends State<page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  color: Color(0xffF5F6FA),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset('images/page9.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SplashScreen()));
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: IconButton(
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => page1()),
                                  );
                                },
                                icon: const Icon(Icons.lock_outline,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 35, 10),
                      child: Text(
                        "Men's Printed Pullover Hoodie",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 35, 10),
                      child: Text(
                        'Price',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                ],
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                      child: Text(
                        "Nike Club Fleece",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Text(
                        '\$ 120',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n1.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n2.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n3.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n4.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n1.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n2.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/n3.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        "Size",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Text(
                        'Size Guide',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F6FA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              'S',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F6FA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              'M',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F6FA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              'L',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F6FA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              'XL',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF5F6FA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              '2XL',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    "The Nike Throwback Pullover Hoodie is made  ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    "from premium French terry fabric that blends a ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Row(children: [
                    Text(
                      "performance feel with ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8F959E)),
                    ),
                    Text(
                      "Read more.. ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ]),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 25, 0, 10),
                      child: Text(
                        "Reviews",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                      child:InkWell(
                        child: Text(
                          'View All',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF8F959E)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/n5.png'),
                ),
                title: const Text(
                  "Ronald Richards",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      size: 18,
                      color: Color(0xff8F959E),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      '13 Sep, 2020',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                trailing: Image.asset('images/stars9.png'),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 5),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 5),
                  child: Text(
                    "adipiscing elit. Pellentesque malesuada eget",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 20),
                  child: Text(
                    "vitae amet...",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
                      child: Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
                      child: Text(
                        '\$125',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
                  child: Text(
                    "with VAT,SD",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8F959E)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const page10()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF9775FA)),
            width: double.infinity,
            height: 75,
            child: const Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
