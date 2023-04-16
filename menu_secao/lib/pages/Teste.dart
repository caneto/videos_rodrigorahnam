import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      appBar: AppBar(
        title: const Text('Flutter Scaffold'),
      ),
      body: const Center(
        child: Text(
          "Aqui é a HomePage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {
            print('Estou flutuando botão');
          }),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@xyz.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: Text("Todas as caixas de entrada"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Primária"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            ListTile(
              title: Text("Promoções"),
              leading: Icon(Icons.local_offer),
            )
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            side: const BorderSide(width: 3, color: Colors.brown),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.print,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            side: const BorderSide(width: 1, color: Colors.yellowAccent),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            label: 'Inicio',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Busca',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Adicione',
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
