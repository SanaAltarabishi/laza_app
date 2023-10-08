import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_app/app/get_it.dart';
import 'package:sign_app/pages/page11.dart';
import 'package:sign_app/pages/page9.dart';

class page10 extends StatefulWidget {
  const page10({super.key});

  @override
  State<page10> createState() => _page10State();
}

class _page10State extends State<page10> {
  String title_data =
      getIt.get<SharedPreferences>().getString('pure_data') ?? '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page9()));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'Reviews',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                  const  Align(
                      alignment: Alignment.topLeft,
                      child:Text(
                        '245 Reviews',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          '4.8',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset('images/stars9.png'),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Container(
                        color:const Color(0xffFF7043),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>const page11()),
                              );
                            },
                            child: const Text(
                              'Add Review',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ))),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'images/n5.png',
                ),
              ),
              title: const Text(
                'Jenny Wilson',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                style: TextStyle(color: Color(0xff8F959E)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'images/n6.png',
                ),
              ),
              title: const Text(
                'Ronald Richards',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                style: TextStyle(color: Color(0xff8F959E)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'images/n7.png',
                ),
              ),
              title: const Text(
                'Guy Hawkins',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                style: TextStyle(color: Color(0xff8F959E)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'images/n8.png',
                ),
              ),
              title: const Text(
                'Savannah Nguyen',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                style: TextStyle(color: Color(0xff8F959E)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            //get_it
            ListTile(
              leading: title_data.isNotEmpty
                  ? const CircleAvatar(
                      child: Icon(Icons.person),
                    )
                  : null,
              title: Text(
                title_data,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                getIt.get<SharedPreferences>().getString('data') ?? '',
                style: const TextStyle(color: Color(0xff8F959E)),
              ),
              trailing:Text(
                  getIt.get<SharedPreferences>().getString('stars') ?? '',
               style: const TextStyle(color: Colors.black)
              ),
            ),
          ],
        ));
  }
}
