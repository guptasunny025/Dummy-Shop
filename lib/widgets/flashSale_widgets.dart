import 'package:flutter/material.dart';

class FlashSaleWidgets extends StatelessWidget {
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
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
          top: devicesize.height / 4 / 4 / 3,
          left: devicesize.width / 4 / 4 / 3,
          right: devicesize.width / 4 / 4 / 3),
      child: Container(
        height: devicesize.height / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: devicesize.width / 4 / 4 / 3),
              child: Text(
                'Flash Sale',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: .4),
              ),
            ),
            SizedBox(
              height: devicesize.height / 4 / 4 / 3,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...flashSaleimages.map(
                    (item) => Card(
                      margin: EdgeInsets.only(
                        left: devicesize.width / 4 / 4 / 3,
                        right: devicesize.width / 4 / 4 / 3,
                      ),
                      elevation: 5,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: devicesize.width * .6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/default.png',
                              image: item,
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: devicesize.height / 4 / 4 / 2,
            ),
          ],
        ),
      ),
    );
  }
}
