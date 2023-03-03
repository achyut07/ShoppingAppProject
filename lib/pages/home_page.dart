import 'package:flutter/material.dart';
import 'package:shop_app/widgets/colors_class.dart';
import 'package:shop_app/pages/productDetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu),
                    Icon(Icons.search),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "New Release",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Nike Air Max 90",
                                  style: TextStyle(
                                      color: AppsColors.lightFontColor),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Card(
                                    elevation: 0,
                                    child: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Image(
                              height: 100,
                              width: 100,
                              image: AssetImage("assets/bannershoe.png")),
                        )
                      ],
                    )),

                SizedBox(
                  height: 120,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(15.0),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 244, 239, 238),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Image(
                                      image:
                                          AssetImage("assets/iconshoe1.png")),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("LifeStyle"),
                            ]),
                          ),
                        ),
                      ),
                      //second card wrap in padding
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 244, 239, 238),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Image(
                                      image:
                                          AssetImage("assets/iconshoe2.png")),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Running"),
                            ]),
                          ),
                        ),
                      ),
                      //3rd card
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const <Widget>[
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 244, 239, 238),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Image(
                                      image:
                                          AssetImage("assets/iconshoe3.png")),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Basketball"),
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //text row
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: const [
                      Text(
                        'New Men\'s',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 600,
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ProductDetailsScreen(
                              firstName: "Men's Shoes",
                              lastName: "last name",
                              secondName: "second name",
                              price: 99.99,
                            );
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/iconshoe4.png"),
                                height: 100,
                              ),
                              Text('Men\'s Shoes',
                                  style: TextStyle(color: Colors.amber),
                                  textAlign: TextAlign.start),
                              Text("Creter Impact",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                  textAlign: TextAlign.start),
                              Text("\$99.99",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                  textAlign: TextAlign.justify),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ProductDetailsScreen(
                              firstName: "Air Max Pre_day",
                              lastName: "last name",
                              secondName: "second name",
                              price: 99.99,
                            );
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/iconshoe5.png"),
                                height: 100,
                              ),
                              Text('Men\'s Shoes',
                                  style: TextStyle(color: Colors.amber)),
                              Text("Air Max Pre-Day",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18)),
                              Text("\$137.5",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage("assets/iconshoe6.png"),
                              height: 100,
                            ),
                            Text('Men\'s Shoes',
                                style: TextStyle(color: Colors.amber)),
                            Text("Jordan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                            Text("\$140.50",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage("assets/iconshoe8.png"),
                              height: 100,
                            ),
                            Text('Men\'s Shoes',
                                style: TextStyle(color: Colors.amber),
                                textAlign: TextAlign.start),
                            Text("Nike",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                                textAlign: TextAlign.start),
                            Text("\$120.50",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                                textAlign: TextAlign.justify),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
