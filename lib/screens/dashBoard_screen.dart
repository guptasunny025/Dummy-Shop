import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yudoo/widgets/flashSale_widgets.dart';
import 'package:yudoo/widgets/newCollection_widget.dart';
import 'package:yudoo/widgets/popular_widget.dart';

class DashBoardScreen extends StatelessWidget {
  final List catfilter = [
    {
      'image':
          'https://p.kindpng.com/picc/s/140-1404107_home-appliances-hd-png-download.png',
      'text': 'Electronics'
    },
    {
      'image':
          'https://png.pngtree.com/png-clipart/20200225/original/pngtree-formal-outfit-and-fashion-items-for-career-woman-illustration-in-hand-png-image_5257561.jpg',
      'text': 'Fashion'
    },
    {
      'image':
          'https://thumbs.dreamstime.com/b/vegetables-shopping-cart-trolley-grocery-logo-icon-design-vector-171090350.jpg',
      'text': 'Grocery'
    },
    {
      'image':
          'https://image.freepik.com/free-vector/men-headshot-logo-mascot_122903-22.jpg',
      'text': 'Men'
    },
    {
      'image':
          'https://st4.depositphotos.com/1653609/23624/v/1600/depositphotos_236249164-stock-illustration-woman-hair-style-logo-design.jpg',
      'text': 'Women'
    },
    {
      'image':
          'https://previews.123rf.com/images/natoushe/natoushe1904/natoushe190400002/120538940-cute-little-baby-logo-template-baby-girl-sitting-in-red-pajamas-isolated-design-template-vector-colo.jpg',
      'text': 'Kids'
    },
  ];
  final List varietyImages = [
    'https://examsbook.co.in/img/post/original/xkxrxJPSDiscount-Questions-and-Answers.jpg',
    'https://www.claruscommerce.com/wp-content/uploads/2019/04/loyalty-to-the-discount-0x0.jpg',
    'https://www.coredna.com/web_images/blogs/71/961/ecommerce-promotion-strategies-discounts-coupons.png',
    'https://gos3.ibcdn.com/gostays-lp-1569663190.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Color(0xFFF4F5FA),
            width: double.infinity,
            height: devicesize.height,
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: devicesize.height / 4 / 4 * .7,
                        left: devicesize.width / 4 / 4 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xFF212529),
                              ),
                              onPressed: () {},
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Welcome to'),
                                Text(
                                  'Yudoo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: Card(
                            margin: EdgeInsets.only(
                                right: devicesize.width / 4 / 4),
                            elevation: 3,
                            child: Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(Icons.notification_important),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent[100],
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.orange[700],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          onTap: () {},
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: devicesize.height / 4 / 4 / 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        elevation: .3,
                        child: Container(
                          width: devicesize.width * .7,
                          height: devicesize.height / 4 / 4,
                          margin: EdgeInsets.only(
                              left: devicesize.width / 4 / 4 / 4),
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 8)),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Card(
                        elevation: .3,
                        child: Container(
                          height: devicesize.height / 4 / 4,
                          width: devicesize.width / 4 / 2,
                          margin: EdgeInsets.only(
                              right: devicesize.width / 4 / 4 / 3),
                          alignment: Alignment.center,
                          child: Text('Go'),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: devicesize.height / 4 * .5,
                  // color: Colors.yellow,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...catfilter.map((item) => Card(
                            margin: EdgeInsets.only(
                                top: devicesize.height / 4 / 4 / 4,
                                left: 8,
                                right: 8),
                            child: Container(
                              width: devicesize.width / 4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: devicesize.width / 4 * .6,
                                    height: devicesize.width / 4 / 2,
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/default.png',
                                      image: item['image'],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Text(item['text'])
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: devicesize.height / 4 / 4 / 2),
                  height: devicesize.height / 2 * .6,
                  child: Swiper(
                    // autoplay: true,
                    // autoplayDelay: 3,
                    scrollDirection: Axis.horizontal,
                    itemCount: varietyImages.length,
                    pagination: SwiperPagination(
                        builder: SwiperPagination.dots,
                        alignment: Alignment.bottomCenter,
                        margin:
                            EdgeInsets.only(top: devicesize.height / 4 / 2)),
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.only(
                          left: devicesize.width / 4 / 4,
                          right: devicesize.width / 4 / 4,
                        ),
                        elevation: 5,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/default.png',
                              image: varietyImages[index],
                              fit: BoxFit.fill,
                            )),
                      );
                    },
                  ),
                ),
                FlashSaleWidgets(),
                NewCollectionsWidget(),
                PopularWidget()
              ],
            )),
      ),
    );
  }
}
