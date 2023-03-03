import 'package:flutter/material.dart';

class CartPageScreen extends StatefulWidget {
  const CartPageScreen({super.key});

  @override
  State<CartPageScreen> createState() => _ProductsPageScreenState();
}

class _ProductsPageScreenState extends State<CartPageScreen> {
  final productName = ["Wahing Machine", "Football", "Shoes"];
  final customerLocation = ["Kathmandu", "Butwal", "Pokhara"];
  final productPrice = [50000.00, 2000.50, 5000.00];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // handle the press
          },
        ),
        title: Center(child: Text("My Cart")),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 20, right: 8),
                      child: Text("Sold By: Pasal Name",
                          style: TextStyle(color: Colors.black54)),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemCount: productName.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: ListTile(
                                  title: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(productName[index]),
                                        ],
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text(customerLocation[index]),
                                        ],
                                      ),
                                    ],
                                  ),
                                  leading: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/detailshoe2.jpg')),
                                  ),
                                  trailing: Text("${productPrice[index]}")));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
