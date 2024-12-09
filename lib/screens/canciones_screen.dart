import 'dart:math';
import 'package:flutter/material.dart';

class CancionesScreen extends StatelessWidget {
  const CancionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canciones'),
        backgroundColor: Colors.purple,
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.purple, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.01)
                      ..rotateY(0),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(22)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Top 10 Canciones',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_presidente.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Presidente \n Total Reproducciones:\n 88,299,713',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_madona.jpg',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Madona \n Total Reproducciones:\n 506,420,507',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_primo.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'PRIMO \n Total Reproducciones:\n 129,648,281',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_giza.jpg',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Giza \n Total Reproducciones:\n 160.079,269',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_diamantes.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Diamantes \n Total Reproducciones:\n 237,249,642',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_pacasbilletes.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Pacas De Billetes \n Total Reproducciones:\n 264,648,848',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_pacasbilletes.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Mi Bello Angel \n Total Reproducciones:\n 426,591,435',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_pacasbilletes.jfif',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'AMG \n Total Reproducciones:\n 750,033,923',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-20, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((1.5 * pi) / 80),
                          child: Container(
                            height: 216,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-44, 0),
                        child: Transform(
                          alignment: FractionalOffset.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY((5 * pi) / 180),
                          child: Container(
                            height: 188,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22)),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/nata_omevoy.jpg',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'O Me Voy O Te Vas \n Total Reproducciones:\n 304,584,428',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
