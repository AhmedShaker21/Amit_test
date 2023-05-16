import 'package:flutter/material.dart';

import '../model/colors.dart';

class HomeePage extends StatelessWidget {
  const HomeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      width: size.width * 0.7),
                  Icon(Icons.shopping_bag_outlined, color: Colors.grey),
                  SizedBox(width: size.width * 0.05),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "#FASHion DAY",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "80% OFF",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Discover fashion that suits to \nyour style",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Image.asset(
                  "assets/OIP.jpeg",
                  width: size.width * 0.5,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(size.height * 0.02),
              padding: EdgeInsets.symmetric(horizontal: size.height * 0.17),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(buttonColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                    elevation: const MaterialStatePropertyAll(5),
                    padding:
                        const MaterialStatePropertyAll(EdgeInsets.all(15))),
                onPressed: () => {
                  // Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),
                },
                child: const Text(
                  "Check this out",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.18,
                  height: size.height * 0.09,
                  color: Colors.white38,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: size.width * 0.10,
                          height: size.height * 0.05,
                          color: Colors.black12,
                          child: Icon(
                            Icons.local_shipping_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        "Electronic",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.18,
                  height: size.height * 0.09,
                  color: Colors.white38,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: size.width * 0.10,
                          height: size.height * 0.05,
                          color: Colors.black12,
                          child: Icon(
                            Icons.local_shipping_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        "Electronic",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.18,
                  height: size.height * 0.09,
                  color: Colors.white38,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: size.width * 0.10,
                          height: size.height * 0.05,
                          color: Colors.black12,
                          child: Icon(
                            Icons.local_shipping_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        "Electronic",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.18,
                  height: size.height * 0.09,
                  color: Colors.white38,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: size.width * 0.10,
                          height: size.height * 0.05,
                          color: Colors.black12,
                          child: Icon(
                            Icons.local_shipping_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        "Electronic",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Sale Product" , style: TextStyle(fontSize: 15), ),
                Text("See more" , style: TextStyle(fontSize: 20,color: Colors.greenAccent,fontWeight: FontWeight.bold),)

              ],
            ),
          ],
        ),
      ),
    );
  }
}
