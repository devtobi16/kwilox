import 'package:flutter/material.dart';
import 'package:kwilox/login.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _key = GlobalKey<FormState>();
  bool toggle = false;
  TextEditingController emailTextController=TextEditingController();
  TextEditingController passwordTextController =TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'First Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your First Name";
                      }
                    },
                    keyboardType: TextInputType.name,
                    controller: firstname,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.amberAccent,
                        size: 30,
                      ),
                      hintText: "Enter First Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Last Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Last Name";
                      }
                    },
                    controller: lastname,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Enter Last Name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.amberAccent,
                          size: 30,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey,
                  child: TextFormField(
                    controller: emailTextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email Address";
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Enter Email Address",
                        fillColor: Colors.white10,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.amberAccent,
                          size: 30,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 320),
                  child: Text(
                    "Age",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: TextFormField(
                    controller: age,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Age";
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Age",
                      prefixIcon: Icon(
                        Icons.format_list_numbered,
                        color: Colors.amberAccent,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 215),
                  child: Text(
                    "Create Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey,
                  child: TextFormField(
                    controller: passwordTextController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Create Password";
                        }
                      },
                      obscureText: toggle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white10,
                        hintText: "Create Password",
                        prefixIcon: GestureDetector(
                          onTap: () {
                            if (toggle == true) {
                              setState(() {
                                toggle = false;
                              });
                            } else {
                              setState(() {
                                toggle = true;
                              });
                            }
                          },
                          child: toggle == true
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.amberAccent,
                                )
                              : Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.amberAccent,
                                ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (_key.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    }
                  },
                  child: Container(
                    height: 46,
                    width: 160,
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Already Have An Account ?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
