import 'package:flutter/material.dart';
import 'package:product_6/data.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  const Text('Category'),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Price'),
                  SizedBox(height: 40,),
                    OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent.shade400,
                      foregroundColor: Colors.white,
                      fixedSize: Size(double.maxFinite, 45),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () => {},
                  child: Text('APPLY',
                      style: TextStyle(fontWeight: FontWeight.bold , ))),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.indigoAccent.shade400,
          ),
        ),
        title: Text(
          'Search Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 290,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Leather',
                          style: TextStyle(fontSize: 20, color: Colors.black45),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.indigoAccent.shade400,
                          weight: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _showBottomSheet(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigoAccent.shade400,
                    ),
                    child: IconButton(
                      onPressed: () => _showBottomSheet(context),
                      icon: Icon(
                        Icons.filter_list_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.3,
                ),
                itemCount: Shoes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () => {},
                      splashColor: Colors.indigoAccent.shade400,
                      child: Column(
                        children: [
                          Flexible(
                            child: FractionallySizedBox(
                              widthFactor: 1.0,
                              heightFactor: 0.95,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  Shoes[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Shoes[index].name,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${Shoes[index].price}',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Men's shoe",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.black45),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                    ),
                                    Text(
                                      '(4.0)',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
