import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

        body:SingleChildScrollView(
            child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top:140.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundImage:AssetImage("images/girl.jpeg",),
                              ),
                          ),
                        ),

                      ],
                    ),
                    Text("Creptin Fragio",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic,color: Colors.white)),
                    Text("FLUTTER DEVELOPER",style: TextStyle(fontSize: 25,color: Colors.white)),
                    Divider(
                      height: 30,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Card(
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            hintText: "345678930",
                            prefixIcon:IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                        ),
                      )
                    ),
                    SizedBox(height: 20),
                    Card(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            hintText: "harshana@gmail.com",
                            prefixIcon:IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                          ),
                        )
                    ),


                  ]
              ),

            )
        )

    );

  }
}
