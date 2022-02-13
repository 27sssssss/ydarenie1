import 'package:flutter/material.dart';
class podskazka extends StatefulWidget {
  const podskazka({Key? key}) : super(key: key);

  @override
  _podskazkaState createState() => _podskazkaState();
}

class _podskazkaState extends State<podskazka> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Подсказка'),
          centerTitle: false,
          actions: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
          ],),

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/asd228133.jpg'),
                fit:BoxFit.fill,
              )
          ),
          child: Center(
            child:Text('В формах именительного падежа множественного числа ударение падает на окончание -а окончание -ы является безударным. В формах родительного падежа множественного числа окончание -ов чаще всего является безударным, а окончание -ей – ударным. В существительных иностранного происхождения ударение, как правило, падает на последний слог. Часто в производных словах сохраняется ударение от производящих слов.',
              style: TextStyle(
              fontSize: 25.0,),
          ),
        ),
      ),
    ),);
  }
}
