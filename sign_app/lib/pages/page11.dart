import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_app/app/get_it.dart';
import 'package:sign_app/pages/page10.dart';

TextEditingController data = TextEditingController();
TextEditingController experence = TextEditingController();
TextEditingController stars = TextEditingController();

class page11 extends StatefulWidget {
  const page11({super.key});
  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Add Review',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Name',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: TextField(
            controller: data,
            decoration: InputDecoration(
              filled: false,
              fillColor: const Color(0xffF5F6FA),
              hintStyle:
                  const TextStyle(color: Color(0xFF8F959E), fontSize: 17),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 35),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Type your name',
            ),
          ),
        ),
        /*  IconButton(
          onPressed: () {
getIt.get<SharedPreferences>().setString('pure_data', data.text);
        }, icon: Icon(Icons.save)),
      */
        const SizedBox(
          height: 3,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'How was your experience ?',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: TextField(
            controller: experence,
            decoration: InputDecoration(
              filled: false,
              fillColor: const Color(0xffF5F6FA),
              hintStyle:
                  const TextStyle(color: Color(0xFF8F959E), fontSize: 17),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 35),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: 'Describe your experience?',
            ),
            maxLines: null,
            minLines: 8,
          ),
        ),
        /* IconButton(
          onPressed: () {
getIt.get<SharedPreferences>().setString('data', experence.text);
        }, icon: Icon(Icons.save)),
*/
        const SizedBox(
          height: 3,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Star',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
        const SizedBox(
          height: 3,
        ),
        Slider(
          value: _sliderValue,
          min: 0,
          max: 5,
          divisions: 5,
          label: 'stars',
          activeColor: const Color(0xff9775FA),
          inactiveColor: const Color(0xff8F959E),
          thumbColor: const Color(0xff9775FA),
          onChanged: (double value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
     
        Text('Selected value: $_sliderValue'),
        /*  Image.asset(
          'images/page11.png',
        ),*/
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: InkWell(
          onTap: () {
            getIt.get<SharedPreferences>().setString('pure_data', data.text);
            getIt.get<SharedPreferences>().setString('data', experence.text);
            getIt.get<SharedPreferences>().setString('stars', stars.text);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color(0xff9775FA),
                action: SnackBarAction(label: "Undo", onPressed: () {}),
                content: const Text("Thank you for providing your feedback"),
              ),
            );

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const page10()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF9775FA)),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: const Center(
              child: Text(
                'Submit Review',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
