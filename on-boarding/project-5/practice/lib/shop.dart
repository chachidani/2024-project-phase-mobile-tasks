import 'package:flutter/material.dart';
import 'package:practice/data.dart';

class ShrineShop extends StatelessWidget {
  const ShrineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SHRINE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.tune)
        ],
      ),
      drawer: Drawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: bags.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Flexible(
                    child: FractionallySizedBox(
                        widthFactor: 1.0,
                        heightFactor: 0.7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Image.asset(
                            bags[index].image,
                            fit: BoxFit.cover,
                          ),
                        ))),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  bags[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${bags[index].price}ETB',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
