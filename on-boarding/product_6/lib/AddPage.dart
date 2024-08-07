import 'package:flutter/material.dart';

class UpDate extends StatelessWidget {
  const UpDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.indigoAccent.shade400,
            )),
        title: const Text(
          'Add Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Card(
                    color: Color.fromARGB(169, 248, 244, 244),
                    child: Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image_outlined,
                              size: 40,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('upload image')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'name',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'category',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'price',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'description',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent.shade400,
                      foregroundColor: Colors.white,
                      fixedSize: Size(double.maxFinite, 50),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () => {},
                  child: Text('ADD',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromARGB(230, 255, 19, 19),
                    fixedSize: Size(double.maxFinite, 50),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    side: BorderSide(
                      color: Color.fromARGB(230, 255, 19, 19),
                      width: 1.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: Text("DELETE",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
