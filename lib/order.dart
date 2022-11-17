import 'package:flutter/material.dart';
import 'login.dart';

class order extends StatelessWidget {
  const order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'John',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'What do you want to eat or drink today ?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.amberAccent,
                    ),
                    hintText: "Search for foods and drinks ",
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset("assets/frenchfries.jpg"),
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
