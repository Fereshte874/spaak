import 'package:flutter/material.dart';


class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 160,
            height: 160,
            transform: Matrix4.rotationZ(0.8),
            decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 10.0)
                ],
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green, Colors.blue])),
            child: const Text(
              "你好Flutter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const Circular(),
          const OvalImage(),
          const SizedBox(height: 20),
          const MyButton(),
          Image.network(
            "https://www.scboy.cc/plugin/scboy_moj/face/sb/11.png",
            // alignment: Alignment.centerLeft,
            // scale: 2,
            // fit: BoxFit.cover,
            // repeat: ImageRepeat.repeat,
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '0',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.home,
                color: Colors.blue,
                size: 36,
              ),
              Icon(
                Icons.newspaper,
                color: Colors.blue,
                size: 36,
              ),
              Icon(
                Icons.category,
                color: Colors.blue,
                size: 36,
              ),
              Icon(
                Icons.shop,
                color: Colors.blue,
                size: 36,
              ),
              Icon(
                Icons.person,
                color: Colors.blue,
                size: 36,
              ),
            ],
          )
        ],
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "按钮",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.scboy.cc/plugin/scboy_moj/face/sb/10.png"),
              fit: BoxFit.cover)),
    );
  }
}

class OvalImage extends StatelessWidget {
  const OvalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset("images/2.0x/043.磬弦奏华夜-3.jpg",
            width: 100, height: 100, fit: BoxFit.cover),
      ),
    );
  }
}