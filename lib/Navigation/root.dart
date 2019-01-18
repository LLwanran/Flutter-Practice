import 'package:flutter/material.dart';

// 数据类
class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

// 列表脚手架
class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductList(
        products:
            List.generate(20, (i) => Product('第 $i 个', '编号为 $i')));
  }
}

// 列表
class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}详情')),
      body: Center(child: Text('${product.description}')),
    );
  }
}
