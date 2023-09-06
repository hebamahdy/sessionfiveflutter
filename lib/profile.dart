import 'package:flutter/material.dart';

void main() => runApp(const MyProfile());

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  static const String _title = 'My Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessProfile(),
      ),
    );
  }
}

class MyStatelessProfile extends StatelessWidget {
  const MyStatelessProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[
        Container(
        alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            )),
        Row(
          children: <Widget>[
            const Text('Name : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const Text(
              'Heba Mahdy',
              style: TextStyle(fontSize: 20),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 20, // <-- SEE HERE
        ),
        Row(
          children: <Widget>[
            const Text('Phone : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const Text(
              '0101234567',
              style: TextStyle(fontSize: 20),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 10, // <-- SEE HERE
        ),
        Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: MyStatefullProfile()),

          ],
        ));
  }
}

class MyStatefullProfile extends StatefulWidget {
  const MyStatefullProfile({super.key});

  @override
  State<MyStatefullProfile> createState() => _MyStatefullProfileState();
}

class _MyStatefullProfileState extends State<MyStatefullProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Call Me'),
      onPressed: () {
        print(nameController.text);
        print(passwordController.text);
      },
    );
  }
}
