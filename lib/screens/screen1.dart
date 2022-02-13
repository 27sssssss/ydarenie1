import 'package:flutter/material.dart';
import 'package:untitled/screens/podskazka.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Орфоэпия'),
          centerTitle: false,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            //IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
            TextButton(onPressed: (){}, child: Text('Подсказка'),
                style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>
                    (Colors.white),
                )),
          ],),
        drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration:BoxDecoration(
                    color: Colors.black38,
                  ),
                  child:Container(
                    height: 400,
                    child: Column(
                        children: [
                          Container(
                            child:Image.asset('assets/123sss.gif'),
                          ),
                        ]
                    ),
                  ),
                ),

                Text('                     Выберите уровень',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),),
                Divider(),
                ListTile(
                  leading: Icon(Icons.filter_1),
                  title: const Text('Тренировочный уровень'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.filter_2),
                  title: const Text('Контролирующий уровень'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.filter_3),
                  title: const Text('Сложный уровень'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined),
                  title: const Text('Подсказка'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>podskazka()));
                  },
                ),
              ]
          ),
        ),





        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/asd228133.jpg'),
                fit:BoxFit.fill,
              )
          ),
          child: Center(
            child:Text('УдарЕние',
              style: TextStyle(
                fontSize: 50.0
              )),
          ),
        ),
      ),
    );
  }
}
