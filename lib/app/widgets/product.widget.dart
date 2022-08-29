import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final name;
  final image_p;
  final precio;

  const ProductCard({Key? key, this.name, this.image_p, this.precio})
      : super(key: key);

  displayCompleteCard(BuildContext context) {
    showDialog(
      context: context,
      // barrierColor: Colors.white70,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: Center(
            child: Container(
              height: 250,
              width: 250,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(3),
                elevation: 5,               
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage(image_p),//ENV['ASSETS']['IMAGES']['PRODUCT2']
                      //fit: BoxFit.cover,
                      fit: BoxFit.contain,
                      height: 180.0,
                      width: 180.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(name),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(precio),
                    ),
                  ],
                ),
              )
            )

          )
        );     
      },
    );
  }
    
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("hi");
        displayCompleteCard(context);
      },
      child: Container(
        height: 200,
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(0),
          elevation: 10,
          
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(image_p),//ENV['ASSETS']['IMAGES']['PRODUCT2']
                //fit: BoxFit.cover,
                fit: BoxFit.contain,
                height: 150.0,
                width: 150.0,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(name),
              ),
            ],
          ),
        )
      )
    );
  }
}
