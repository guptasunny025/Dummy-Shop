import 'package:flutter/material.dart';

class NewCollectionsWidget extends StatelessWidget {
  final List flashSaleimages = [
    {
      'image':
          'https://png.pngtree.com/element_our/md/20180302/md_5a98f93a2fafc.jpg',
      'text': 'Blue Lunar',
      'price': '₹8333'
    },
    {
      'image':
          'https://image.freepik.com/free-vector/men-s-fashion-sale-banner-template-design_48159-387.jpg',
      'text': 'Men Black Loafers',
      'price': '₹4334'
    },
    {
      'image':
          'https://www.knowband.com/image/cache/data/Plugin%20Logo/PS-FLASH-SALE-1000-x-1000-740x740.jpg',
      'text': 'Fashion Streets',
      'price': '₹2442'
    },
    {
      'image':
          'https://image.freepik.com/free-vector/women-s-day-discount-modern-pink-banner-with-women-s-shoe_7993-1876.jpg',
      'text': 'Blue Lunar',
      'price': '₹4232'
    },
    {
      'image':
          'https://image.freepik.com/free-vector/men-s-fashion-sale-banner-template-design_48159-387.jpg',
      'text': 'Men Black Loafers',
      'price': '₹4334'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      //height: deviceSize.height / 2 * .7,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'New Collections',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  //   return PickTodayScreen();
                  // }));
                },
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(children: [
            GridView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                crossAxisCount: 2,
                childAspectRatio: 3.2 / 4.5,
              ),
              shrinkWrap: true,
              children: <Widget>[
                for (int index1 = 0; index1 < flashSaleimages.length; index1++)
                  Container(
                    child: Column(
                      children: [
                        Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Container(
                                    // padding: EdgeInsets.all(5),
                                    height: devicesize.height / 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: FadeInImage.assetNetwork(
                                        placeholder: 'assets/default.png',
                                        image: flashSaleimages[index1]['image'],
                                        width: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: devicesize.width / 4 / 2,
                                    padding: EdgeInsets.only(top: 3, bottom: 3),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Sale',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEB452F),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10))),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    padding: EdgeInsets.all(3),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    flashSaleimages[index1]['text'],
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    flashSaleimages[index1]['price'],
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ],
            )
          ])
        ],
      ),
    );
  }
}
