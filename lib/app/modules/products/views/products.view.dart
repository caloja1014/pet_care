import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/products.controller.dart';
import 'package:pet_care/config/config.dart' as config;

class ProductsView extends GetView<ProductsController> {
  final ENV = config.ENV;
  ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 60,
              width: double.infinity,
              child: Text(
                'Veterinaria Pablito',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 25,
              width: double.infinity,
              child: Text(
                'Productos',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [ 
                      Container(
                        height: 200,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(15),
                          elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage(ENV['ASSETS']['IMAGES']['PRODUCT2']),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text('Wellness croquetas'),
                              ),
                            ],
                          ),
                        )
                      )
                    ])
                )
              )
            )
        ])
      ),
    );
  }
}
