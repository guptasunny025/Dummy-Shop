import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  final List flashSaleimages = [
    'https://png.pngtree.com/element_our/md/20180302/md_5a98f93a2fafc.jpg',
    'https://image.freepik.com/free-vector/men-s-fashion-sale-banner-template-design_48159-387.jpg',
    'https://www.knowband.com/image/cache/data/Plugin%20Logo/PS-FLASH-SALE-1000-x-1000-740x740.jpg',
    'https://image.freepik.com/free-vector/women-s-day-discount-modern-pink-banner-with-women-s-shoe_7993-1876.jpg',
    'https://png.pngtree.com/element_our/md/20180302/md_5a98f93a2fafc.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return Container(
        height: devicesize.height * .5,
        margin: EdgeInsets.only(top: devicesize.height / 4 / 4 * .8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: devicesize.width / 4 / 4 * .8),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ),
                GestureDetector(
                    child: Container(
                  margin: EdgeInsets.only(right: devicesize.width / 4 / 4 * .8),
                  child: Text('See all',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 15)),
                ))
              ],
            ),
            SizedBox(
              height: devicesize.height / 4 / 4 / 3,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...flashSaleimages.map(
                    (item) => Container(
                      padding:
                          EdgeInsets.only(bottom: devicesize.width / 4 / 4 / 4),
                      child: Card(
                        margin: EdgeInsets.only(
                          left: devicesize.width / 4 / 4 / 3,
                          right: devicesize.width / 4 / 4 / 3,
                        ),
                        elevation: 5,
                        shadowColor: Color(0xFFEAEBF0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            width: devicesize.width * .5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image: item,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: devicesize.height / 4 / 4 / 4,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: devicesize.width / 4 / 4 / 2),
                                        child: Text(
                                          'Slim fit-jeans\nCasula wear',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: devicesize.width / 4 / 4 / 2),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(8),
                                  height: devicesize.height / 4 / 4 * .8,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '\$20',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFEAEBF0),
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: devicesize.height / 4 / 4 / 3,
            ),
          ],
        ));
  }
}
