import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFEDEDEF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(devicesize.height / 4 / 3),
        child: AppBar(
          elevation: 2,
          backgroundColor: Color(0xFFF4F5FA),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xFF212529),
            ),
            onPressed: () {},
          ),
          title: Text(
            'Cart',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: .5),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: devicesize.height / 4 * .9,
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListTile(
                            leading: Transform.translate(
                              offset: Offset(0, devicesize.width / 4 / 4 / 2),
                              child: Transform.scale(
                                scale: 1.6,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: devicesize.width / 4 / 4 / 2),
                                  height: devicesize.height / 4,
                                  width: devicesize.width / 4 * .6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image:
                                          'https://www.vhv.rs/dpng/d/497-4971765_men-man-with-shopping-bags-png-transparent-png.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            title: Transform.translate(
                              offset: Offset(devicesize.width / 4 / 4 / 2,
                                  devicesize.width / 4 / 4 / 2),
                              child: Text(
                                  'Slim Fit Jeans | Casual Wear \nSize 32\nQuantity: 1\nColor: Red'),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 1, left: 8, right: 8),
                            height: devicesize.height / 4 / 4 * .8,
                            alignment: Alignment.center,
                            child: Text(
                              '\$20',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEAEBF0),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: devicesize.height / 4 * .9,
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListTile(
                            leading: Transform.translate(
                              offset: Offset(0, devicesize.width / 4 / 4 / 2),
                              child: Transform.scale(
                                scale: 1.6,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: devicesize.width / 4 / 4 / 2),
                                  height: devicesize.height / 4,
                                  width: devicesize.width / 4 * .6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image:
                                          'https://www.vhv.rs/dpng/d/497-4971765_men-man-with-shopping-bags-png-transparent-png.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            title: Transform.translate(
                              offset: Offset(devicesize.width / 4 / 4 / 2,
                                  devicesize.width / 4 / 4 / 2),
                              child: Text(
                                  'Slim Fit Jeans | Casual Wear \nSize 32\nQuantity: 1\nColor: Red'),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 1, left: 8, right: 8),
                            height: devicesize.height / 4 / 4 * .8,
                            alignment: Alignment.center,
                            child: Text(
                              '\$20',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEAEBF0),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: devicesize.height / 4 * .9,
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListTile(
                            leading: Transform.translate(
                              offset: Offset(0, devicesize.width / 4 / 4 / 2),
                              child: Transform.scale(
                                scale: 1.6,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: devicesize.width / 4 / 4 / 2),
                                  height: devicesize.height / 4,
                                  width: devicesize.width / 4 * .6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image:
                                          'https://www.vhv.rs/dpng/d/497-4971765_men-man-with-shopping-bags-png-transparent-png.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            title: Transform.translate(
                              offset: Offset(devicesize.width / 4 / 4 / 2,
                                  devicesize.width / 4 / 4 / 2),
                              child: Text(
                                  'Slim Fit Jeans | Casual Wear \nSize 32\nQuantity: 1\nColor: Red'),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 1, left: 8, right: 8),
                            height: devicesize.height / 4 / 4 * .8,
                            alignment: Alignment.center,
                            child: Text(
                              '\$20',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEAEBF0),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: devicesize.height / 4 * .9,
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListTile(
                            leading: Transform.translate(
                              offset: Offset(0, devicesize.width / 4 / 4 / 2),
                              child: Transform.scale(
                                scale: 1.6,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: devicesize.width / 4 / 4 / 2),
                                  height: devicesize.height / 4,
                                  width: devicesize.width / 4 * .6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image:
                                          'https://www.vhv.rs/dpng/d/497-4971765_men-man-with-shopping-bags-png-transparent-png.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            title: Transform.translate(
                              offset: Offset(devicesize.width / 4 / 4 / 2,
                                  devicesize.width / 4 / 4 / 2),
                              child: Text(
                                  'Slim Fit Jeans | Casual Wear \nSize 32\nQuantity: 1\nColor: Red'),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 1, left: 8, right: 8),
                            height: devicesize.height / 4 / 4 * .8,
                            alignment: Alignment.center,
                            child: Text(
                              '\$20',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEAEBF0),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  )

                  // Container(
                  //   height: 455,
                  //   width: 344,
                  //   color: Colors.yellowAccent,
                  // )
                ],
              )),
              Container(
                height: devicesize.height / 4 * .7,
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('You Have 4 Amount On Your Cart')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('    Total Amount'),
                        Text('\$40.32     ')
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        // width: devicesize.width / 2,
                        height: devicesize.height / 4 / 3 * .8,
                        alignment: Alignment.center,
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              letterSpacing: .5),
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF3B85E4),
                                Color(0xFF3B85E4),
                                Color(0xFF339DCD).withOpacity(.9),
                                Color(0xFF2AB3B9),
                              ],
                              stops: [0.4, 0.3, 0.8, 0.9],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
