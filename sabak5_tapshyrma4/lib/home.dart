import 'package:flutter/material.dart';
import 'package:sabak5_tapshyrma4/Second_Page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? email;
  void ishtoo() {
    if (phoneNumber != null && email != null) {
      if (phoneNumber!.isEmpty || email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
      setState(() {});
    }
    //!= -барабар эмес болсо
    //if-эгер
    //&&-жана
    //ifEmpty-пустой
    //||-же
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Тапшырма 4',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0, //теньди жок кылат
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //жазууду контейнерди ортого алып келет
          children: [
            ClipOval(
              child: Image.network(
                ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFumAOcZzt4MvQL1dRUHPR7NX9ytf7F-Fd-OfZkPUBvdHVRB1hXyFHLbtPkyjsXwrwfQ8&usqp=CAU'),
              ),
            ),
            const Text(
              'Fatima Pulotova',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Pacifico-Regular',
                color: Color(0xfff7f9f9),
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xfff7f9f9),
              ),
            ),
            const Divider(
              //uzun syzyk
              height: 0, //tyrtot
              thickness: 2, //koloko tyshyrot
              indent: 57,
              endIndent: 47.5,
              color: Colors.white,
            ),
            const SizedBox(
              height: 23.5,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056c5c),
                    fontWeight: FontWeight.w600),
                onChanged: (String? value) {
                  phoneNumber = value;
                  ishtoo();
                  print('value: $value');

                  print('phoneNumber: $phoneNumber');
                }, //onChanged-озуно бир маани алат жана ал маанини колсолсдон корсотуп берет
                //value-onChangedтин мааниси
                decoration: const InputDecoration(
                  labelText: 'phone Number',
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10, //эки контейнердин ортосун ачат
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                //контейнердин ичине жазууга мумкунчулук берет
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056c5c),
                    fontWeight: FontWeight.w600),
                //текстин колому
                onChanged: (String? value) {
                  email = value;
                  ishtoo();
                  print('value:$value');
                  print('email:$email');
                }, //
                decoration: const InputDecoration(
                  labelText: 'email address',
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.white),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: isActive
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IamRich(),
                        ),
                      );
                    }
                  : null,
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
