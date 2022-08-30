import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/products.controller.dart';
import 'package:pet_care/app/widgets/product.widget.dart';
import 'package:pet_care/config/config.dart' as config;

class ProductsView extends GetView<ProductsController> {
  final ENV = config.ENV;
  ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Productos"),
          backgroundColor:
              Color.fromRGBO(26, 192, 198, 1), //rgb(0, 183, 255)00B7FF
        ),
        /*body: Container(
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
            Container(
              child: */
        body: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: [
              ProductCard(
                name: "Wellness croquetas",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT1'],
                precio: "\$35",
              ),
              ProductCard(
                name: "Juguete masticable",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT2'],
                precio: "\$22",
              ),
              ProductCard(
                name: "Cepillo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT3'],
                precio: "\$15",
              ),
              ProductCard(
                name: "Shampoo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT4'],
                precio: "\$25",
              ),
              //ProductCard(name: "Shampoo", image_p: ENV['ASSETS']['IMAGES']['PRODUCT4']),
              ProductCard(
                name: "Wellness croquetas",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT1'],
                precio: "\$35",
              ),
              ProductCard(
                name: "Juguete masticable",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT2'],
                precio: "\$22",
              ),
              ProductCard(
                name: "Cepillo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT3'],
                precio: "\$15",
              ),
              ProductCard(
                name: "Shampoo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT4'],
                precio: "\$25",
              ),
              ProductCard(
                name: "Wellness croquetas",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT1'],
                precio: "\$35",
              ),
              ProductCard(
                name: "Juguete masticable",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT2'],
                precio: "\$22",
              ),
              ProductCard(
                name: "Cepillo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT3'],
                precio: "\$15",
              ),
              ProductCard(
                name: "Shampoo",
                image_p: ENV['ASSETS']['IMAGES']['PRODUCT4'],
                precio: "\$25",
              )
            ])
        /*)
          ]
        )
      )*/
        );
  }
}
