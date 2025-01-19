import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/widgets/product_list_row_widget.dart';

class ProductListWidget extends StatefulWidget {
  List<Product> products;

  ProductListWidget(this.products);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductListWidget();
  }
}

class _ProductListWidget extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildProductListWidget(context);
  }

  Widget buildProductListWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0,),
        SizedBox(
          height: 500.0,
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(widget.products.length, (index) {
            return ProductListRowWidget(widget.products[index]);
          }),
          ),

        ),
      ],
    );
  }
}
