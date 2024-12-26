import 'dart:developer';

import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/card3bg.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withAlpha((0.6 * 255).toInt()),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8,),
                  const Text(
                    'Recipie Trends',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),

                      fontWeight: FontWeight.w800,
                    ),
                  ),
                 const SizedBox(height: 30,),
                 Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      Chip(
                        label: const Text('Healthy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },

                        
                      ),
                      Chip(
                        label: const Text('Vegan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },

                        
                      ),
                      Chip(
                        label: const Text('Carrots',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },
                      ),
                       Chip(
                        label: const Text('Greens',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },
                      ),
                       Chip(
                        label: const Text('Wheat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },
                      ),
                       Chip(
                        label: const Text('Mint',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      
                      ),
                       Chip(
                        label: const Text('Veg',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      ),
                       Chip(
                        label: const Text('Non-Veg',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                      backgroundColor: const Color.fromARGB(153, 0, 0, 0).withAlpha((0.7 * 325).toInt()),
                      onDeleted: () {
                        log('deleted');
                      },
                      )
                    ],
                  ),
                 )
              

                ],
              ),
            ),
            ],
          ),
      ),
    );
  }
}