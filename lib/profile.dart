import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xff8b35bf),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Colors.black54,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    'Profile Details',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Stack(children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/sample.jpg',
                      height: 160,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 3,
                    right: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.black,
                      ),
                    )),
              ]),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [Colors.black54, Colors.blueAccent]),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Name",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Email",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Type something about yourself",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Address",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1)),
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 70,
                      width: 200,
                      child: Align(
                        child: Text("Save"),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(30))),
                    ),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
