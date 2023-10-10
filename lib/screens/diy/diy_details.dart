// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:tuncecom/models/diy_model.dart';

class DIYDetails extends StatelessWidget {
  final List<DIYModel> productDetails;
  const DIYDetails({
    Key? key,
    required this.productDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürün Detayları'),
      ),
      body: ListView.builder(
        itemCount: productDetails.length,
        itemBuilder: (context, index) {
          final product = productDetails[index];
          productDetails.forEach((product) {
            log('Title: ${product.title}');
            log('Description: ${product.description}');
            // Diğer verileri burada yazdırın.
          });

          return ListTile(
            title: Text(product.title),
            subtitle: Text(product.description),
            leading: Image.network(product.imageUrl),
            // Diğer verileri burada göstermek için gerekli widget'ları ekleyin.
          );
        },
      ),
    );
  }
}
