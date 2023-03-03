// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String firstName, secondName, lastName;
  final double price;

  const ProductDetailsScreen({
    Key? key,
    required this.firstName,
    required this.secondName,
    required this.lastName,
    required this.price,
  }) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/detailshoe1.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Nike hot sell offer",
                style: TextStyle(
                    color: Color.fromARGB(255, 187, 25, 79),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.montserrat().fontFamily),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 80,
                child: Card(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          "5.0",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
              child: Text(
                "Price:\$ 40",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 5,
              ),
              child: Row(
                children: [
                  Icon(Icons.shop),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sold By",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text("Company Name"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Icon(Icons.delivery_dining),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Shipping From",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("Location"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black12,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Quantity",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("item \-  1  \+"),
                  ),
                  // need to add drop down menu to select quantity
                ],
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black12,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Return & Refund",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 4),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Icon(Icons.policy),
                              ),
                              Text(
                                "Refer to Return and Refund Policy",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Warranty",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 4),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Icon(Icons.policy_rounded),
                              ),
                              Text(
                                "No Warranty",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 4),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: CircleAvatar(
                                    child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                            'assets/iconshoe6.png'))),
                              ),
                              Text(
                                "Reviews from user",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
