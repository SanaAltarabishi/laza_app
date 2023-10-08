import 'package:flutter/material.dart';
import 'package:sign_app/pages/page9.dart';

enum PasswordStrength {
  Weak,
  Medium,
  Strong,
}

class User {
  String email;
  String password;

  User({required this.email, required this.password});
}

bool pass = true;
bool _switchValue = false;
final _formKey = GlobalKey<FormState>();
final _usernameController = TextEditingController();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

class page1 extends StatefulWidget {
  page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  late User _user;
  PasswordStrength _passwordStrength = PasswordStrength.Weak;

  void _checkPasswordStrength(String password) {
    RegExp weakRegex = RegExp(r'^.{1,8}$');
    RegExp mediumRegex = RegExp(r'^.{8,15}$');

    if (weakRegex.hasMatch(password)) {
      setState(() {
        _passwordStrength = PasswordStrength.Weak;
      });
    } else if (mediumRegex.hasMatch(password)) {
      setState(() {
        _passwordStrength = PasswordStrength.Medium;
      });
    } else {
      setState(() {
        _passwordStrength = PasswordStrength.Strong;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _user = User(email: '', password: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            tooltip: 'back',
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              TextFormField(
                cursorColor: const Color(0xff9775FA),
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  //labelStyle:TextStyle(color: Color(0xff9775FA)),
                  hintText: 'Please enter your  username',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9775FA),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _user.password = value;
                    _checkPasswordStrength(value);
                  });
                },
                cursorColor: const Color(0xff9775FA),
                controller: _passwordController,
                decoration: InputDecoration(
                  suffixIcon: Column(
                    children: [
                      Text(
                        ' ${_passwordStrength.toString().split('.').last}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _passwordStrength == PasswordStrength.Strong
                              ? Colors.green
                              : (_passwordStrength == PasswordStrength.Medium
                                  ? Colors.orange
                                  : Colors.red),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                        icon: pass == false
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        color: const Color(0xff9775FA),
                      ),
                    ],
                  ),
                  labelText: 'Password',
                  hintText: 'Please enter your password',
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9775FA),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
                obscureText: pass,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _user.email = value;
                  });
                },
                cursorColor: const Color(0xff9775FA),
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'Please enter your email address',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9775FA),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Remember me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Switch(
                    activeColor: const Color(0xff34C559),
                    value: _switchValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        _switchValue = newValue;
                      });
                    },
                  ),
                ),
              ]),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const page9()),
                          );
                        }
                      },
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Color(0xFF9775FA)),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
