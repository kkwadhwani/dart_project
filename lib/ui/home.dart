import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BizCard'),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [_getCard(), _getAvatar()],
          ),
        ));
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 250,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Kunal Wadhwani",
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Entreprenue",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("twitter: @kkwadhwani")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.5),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/id/237/230/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint("Tapped Button is an Alarm");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New App'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("Email Tapped")),
          IconButton(icon: Icon(Icons.alarm), onPressed: _tapButton)
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Tapped"),
          backgroundColor: Colors.amberAccent,
          child: Icon(Icons.call_missed)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('First'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            title: Text('Second'),
          ),
        ],
        onTap: (int index) => debugPrint('Tappes NO: $index'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton()
            // InkWell(
            //   child: Text(
            //     'Tap me',
            //     style: TextStyle(fontSize: 25),
            //   ),
            //   onTap: () => debugPrint('Tapped here......'),
            // )
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue.shade200,
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(content: Text('Hello Welcome'));

        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Button'),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            "Hello WOrld",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 50.0,
                fontStyle: FontStyle.italic),
          ),
        ));
  }
}
