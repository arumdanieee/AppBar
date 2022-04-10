import 'package:flutter/material.dart';
import 'package:navrouting/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'AppBar',
            ),
          ),
          backgroundColor: Colors.pink,
        ),
        drawer: DrawerWidget(),
        body: Image(
          image: AssetImage('assets/images/ning.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.pink),
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ning.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Nama : HSP Watulintang Arumdanie',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Jurusan: Teknik Informatika',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/images/ning.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'NAMA : HSP Watulintang Arumdanie',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: Text(
              'EMAIL : hspwatul@gmail.com',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.pink,
      ),
      body: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        style: TextStyle(
          fontSize: 15,
          letterSpacing: 2,
          wordSpacing: 3,
          height: 2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        backgroundColor: Colors.pink,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ning.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2.0),
                  Text("NINGNING AESPA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ning.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2.0),
                  Text("NINGNING AESPA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ning.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2.0),
                  Text("NINGNING AESPA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ning.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 2.0),
                  Text("NINGNING AESPA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
