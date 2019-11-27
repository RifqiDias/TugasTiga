import 'package:eudekatugas3/pages/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:rupiah/rupiah.dart';

class ProductsListItem extends StatelessWidget {
  final String name;
  final int currentPrice;
  final int originalPrice;
  final int discount;
  final String imageUrl;
  final String categories;
  // final int entityId;

  const ProductsListItem(
      {Key key,
      this.name,
      this.currentPrice,
      this.originalPrice,
      this.discount,
      this.imageUrl,
      this.categories,
      // this.entityId
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildProductItemCard(context),
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
        onTap: () {
          print("Buy this");
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Detailproduct()));
          // (entityId: entityId)));
        },
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.network(
                    imageUrl,
                  ),
                  height: MediaQuery.of(context).size.height / 6.8,
                  width: MediaQuery.of(context).size.width / 2.1,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          height: 28.0,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Text(
                            name,
                            style: TextStyle(fontSize: 15),
                            maxLines: 1,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            rupiah("$currentPrice"),
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.black),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          // Text(
                          //   "$discount\% off",
                          //   style:
                          //       TextStyle(fontSize: 12.0, color: Colors.grey),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
