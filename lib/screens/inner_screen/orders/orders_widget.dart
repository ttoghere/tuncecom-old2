// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import 'package:tuncecom/models/order_model.dart';

import '../../../consts/app_constants.dart';
import '../../../widgets/subtitle_text.dart';
import '../../../widgets/title_text.dart';

class OrdersWidgetFree extends StatefulWidget {
  final OrdersModelAdvanced ordersModelAdvanced;
  const OrdersWidgetFree({
    Key? key,
    required this.ordersModelAdvanced,
  }) : super(key: key);

  @override
  State<OrdersWidgetFree> createState() => _OrdersWidgetFreeState();
}

class _OrdersWidgetFreeState extends State<OrdersWidgetFree> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              height: size.width * 0.25,
              width: size.width * 0.25,
              imageUrl: widget.ordersModelAdvanced.imageUrl,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.ordersModelAdvanced.productTitle,
                          maxLines: 2,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Price:  ',
                        style: TextStyle(fontSize: 15),
                      ),
                      Flexible(
                        child: Text(
                          widget.ordersModelAdvanced.price.toString(),
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "QTY: ${widget.ordersModelAdvanced.quantity}",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
