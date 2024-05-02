import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_widgets.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key, required String title});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<ItemWidget> lista = [];
  int contador = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Westermann',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Montserrat Alternates'),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49).withOpacity(0.5),
        leading: Image.asset('assets/logo_west.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                const Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                IconButton(
                  onPressed: () {
                    // Adicione sua ação para o ícone do GitHub
                  },
                  icon: const Icon(Icons.star, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    // Adicione sua ação para o ícone do LinkedIn
                  },
                  icon: const Icon(Icons.star, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: Colors.white,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Row(
                      children: [
                        Text(
                          'print("Gustavo Westermann")',
                          style: TextStyle(
                              color: Color.fromRGBO(186, 143, 149, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Gustavo \nWestermann',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat Alternates',
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
