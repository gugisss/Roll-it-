import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        drawer: Builder(
          builder: (context) => Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Center(
                    child: Text('Menu Dados'),
                  ),
                ),
                ListTile(
                  title: Text('Dados D6'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return D6();
                      }),
                    );
                  },
                ),
                ListTile(
                  title: Text('Dados D20'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return D20();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(
            child: Text('Roll it!'),
          ),
          backgroundColor: Colors.red.shade700,
        ),
        body: rollit(),
      ),
    ),
  );
}

class rollit extends StatefulWidget {
  const rollit({Key? key}) : super(key: key);

  @override
  State<rollit> createState() => _rollitState();
}

class _rollitState extends State<rollit> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void rolagemDados() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rolagemDados();
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rolagemDados();
              },
              child: Image.asset('imagens/dado$numeroDadoDireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class D6 extends StatefulWidget {
  const D6({Key? key}) : super(key: key);

  @override
  State<D6> createState() => _D6State();
}

class _D6State extends State<D6> {
  int numeroD6 = 1;


  void rolagemDados() {
    setState(() {
      numeroD6 = Random().nextInt(6) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Roll D6!'),
        ),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red.shade700,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  rolagemDados();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('imagens/dado$numeroD6.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class D20 extends StatefulWidget {
  const D20({Key? key}) : super(key: key);

  @override
  State<D20> createState() => _D20State();
}

class _D20State extends State<D20> {
  int numeroD20 = 1;


  void rolagemDados() {
    setState(() {
      numeroD20 = Random().nextInt(20) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Roll D6!'),
        ),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red.shade700,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  rolagemDados();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('imagens/d20/20d$numeroD20.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

