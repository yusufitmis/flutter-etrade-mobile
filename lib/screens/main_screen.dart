import 'dart:convert';
import 'package:http_demo/data/api/product_api.dart';
import 'package:http_demo/models/category.dart';
import 'package:flutter/material.dart';
import 'package:http_demo/data/api/category_api.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/widgets/product_list_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  List<Category> categories = [];
  List<Widget> categoriWidgets = [];
  List<Product> products = [];
  @override
  void initState() {
    // TODO: implement initState
    getCategoriesFromApi();
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ETrade Mobil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: categoriWidgets),
            ),
            ProductListWidget(products)
          ],
        ),
      ),
    );
  }

  void getCategoriesFromApi() {
    CategoryApi.getCategories().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.categories =
            list.map((category) => Category.fromJson(category)).toList();
        getCategoryWidgets();
      });
    });
  }

  List<Widget> getCategoryWidgets() {
    for (int i = 0; i < categories.length; i++) {
      categoriWidgets.add(getCategoryWidget(categories[i]));
    }
    return categoriWidgets;
  }

  Widget getCategoryWidget(Category category) {
    return ElevatedButton(
        onPressed: () {
          getProductsByCategoryId(category);
        },
        child: Text(category.categoryName!,
            style: TextStyle(color: Colors.blueGrey)));
  }

  void getProductsByCategoryId(Category category) {
    ProductApi.getProdoctsByCategoryId(category.id!).then((response)=>{
        setState(() {
          Iterable list = json.decode(response.body);
          this.products = list.map((product)=>Product.fromJson(product)).toList();
        })
    });
  }
  void getProducts() {
    ProductApi.getProducts().then((response)=>{
      setState(() {
        Iterable list = json.decode(response.body);
        this.products = list.map((product)=>Product.fromJson(product)).toList();
      })
    });
  }
}
