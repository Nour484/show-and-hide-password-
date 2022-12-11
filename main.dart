import 'package:flutter/material.dart';

void main() {
  runApp(const MyTrying());
}

class MyTrying extends StatefulWidget {
  const MyTrying({super.key});

  @override
  State<MyTrying> createState() => _MyTryingState();
}

class _MyTryingState extends State<MyTrying> {
  bool securText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            //*  how to use  gradient color
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.1,
                  0.4,
                  1
                ],
                colors: [
                  Color.fromARGB(255, 107, 105, 105),
                  Color.fromARGB(255, 214, 214, 235),
                  Color.fromARGB(255, 223, 193, 203),
                ]),
            // color: Colors.amber

            // image: DecorationImage(
            //   image: AssetImage("images/backgroundOne.jpg"),
            // ),
          ),
          child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Text(
                      " Password",
                      style: TextStyle(
                          fontFamily: "Dancing Script",
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 60),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: TextField(
                    //* here we use the bool variable to change the state
                    obscureText: securText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              securText = !securText;
                            });
                          },
                          //* here we change the icon  "show or hide password"
                          icon: Icon(securText
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color.fromARGB(255, 45, 43, 43),
                      ),
                      hintText: "Password",
                      constraints: const BoxConstraints(maxWidth: 380),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
