import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 12000,
      "price": 10000,
    },
    {
      "name": "Robe",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 2000,
      "price": 1000,
    },
    {
      "name": "Robe rouge",
      "picture": "images/products/dress1.jpeg",
      "old_price": 8000,
      "price": 6000,
    },
    {
      "name": "Robe noire",
      "picture": "images/products/dress2.jpeg",
      "old_price": 8000,
      "price": 6000,
    },
    {
      "name": "Escarpin",
      "picture": "images/products/hills1.jpeg",
      "old_price": 12000,
      "price": 10000,
    },
    {
      "name": "Escarpin rouge",
      "picture": "images/products/hills2.jpeg",
      "old_price": 12000,
      "price": 10000,
    },
    {
      "name": "Jupe longue",
      "picture": "images/products/skt1.jpeg",
      "old_price": 2000,
      "price": 1000,
    },
    {
      "name": "Jupe courte rose",
      "picture": "images/products/skt2.jpeg",
      "old_price": 12000,
      "price": 10000,
    }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "$prod_price \FCFA",
                        style: TextStyle(
                            color: Colors.lightBlue, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "$prod_old_price \FCFA",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
