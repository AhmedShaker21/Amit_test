import 'package:flutter/material.dart';
import 'package:task_amit/model/colors.dart';
import 'package:task_amit/complement/foodModel.dart';
import 'package:task_amit/complement/itemWidget.dart';

import '../complement/screenSize.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  var _width;
  var _list = ClothesModel.list;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              ..._list.map((data) {
                return ItemWidget(
                  model: data,
                  updateFunction: subTotal,
                );
              }),
              Padding(
                padding: EdgeInsets.only(
                    top: screenAwareSize(130, context),
                    left: screenAwareSize(20, context),
                    right: screenAwareSize(20, context)),
                child: Stack(
                  children: [
                    Container(
                      width: size.width * 0.9,
                      decoration:
                      BoxDecoration(color: iconColor, borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenAwareSize(20, context),
                        ),
                        child: Column(
                          children: [
                            _buildWidgetSummary("Sub Total", subTotal()),
                            _buildWidgetSummary("Tax", 15),
                            _buildWidgetSummary("Delivery Charges", 20),
                            _buildWidgetSummary("Bill Amount", subTotal() + 20, isTotal: true),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenAwareSize(_width * 0.15, context),
                                right: screenAwareSize(_width * 0.07, context),
                                bottom: screenAwareSize(20, context),
                              ),
                              child: Container(
                                width: 500,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)),
                                      ),
                                    ),
                                    child: const Text(
                                      'Order now',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.orange),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenAwareSize(20, context),
            horizontal: screenAwareSize(_width * .05, context)),
      ),
    );
  }

  Widget _buildWidgetSummary(String title, int amount, {bool isTotal = false}) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(_width * .15, context),
        right: screenAwareSize(_width * .07, context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.8,
            ),
          ),
          Text(
            "$amount",
            style: TextStyle(color: Colors.white, fontSize: isTotal ? 20 : 16, height: 1.8),
          )
        ],
      ),
    );
  }

  int subTotal() {
    var value = 0;
    setState(() {
      for (var item in _list) {
        value += item.price * item.orderNumber;
      }
    });

    return value;
  }
}
