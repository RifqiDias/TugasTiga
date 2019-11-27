import 'package:eudekatugas3/services/api_service.dart';
import 'package:eudekatugas3/services/search_bar.dart';
import 'package:eudekatugas3/util/productlistitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: ProductPage(),
    ));

class ProductPage extends StatefulWidget {
  static String tag = 'product-page';
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  var items = List<String>();
  TabController controller;

  @override
  void initState() {
    super.initState();
    setState(() {});
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiService.getCategories(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //remove tab default category
            snapshot.data
                .removeWhere((item) => item.name == 'Default Category');
            return snapshot.connectionState == ConnectionState.done
                ? DefaultTabController(
                    length: snapshot.data.length,
                    child: Scaffold(
                      resizeToAvoidBottomPadding: false,
                      appBar: AppBar(
                        title: Text("Products",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        backgroundColor: HexColor("042548"),
                        bottom: PreferredSize(
                          child: TabBar(
                              isScrollable: true,
                              unselectedLabelColor:
                                  Colors.white.withOpacity(0.3),
                              indicatorColor: Colors.white,
                              controller: controller,
                              labelColor: Colors.white,
                              tabs: snapshot.data
                                  .map(
                                    (dt) => Tab(
                                        text: dt.name == 'Root Catalog'
                                            ? "All"
                                            : dt.name),
                                  )
                                  .toList()),
                          // preferredSize: Size.fromHeight(30),
                        ),
                      ),
                      body: new TabBarView(
                        children: <Widget>[
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(children: <Widget>[
                              Container(
                                //  all
                                child: _listAllBillboard(),
                              ),
                            ],
                            ),
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                           children: <Widget>[
                               Container(
                            //Billboard
                            child: _listAllBillboard(),
                          ),
                           ],
                           )
                          ),
                         
                            
                          
                        ],
                      ),
                    ),
                  )
                : InkWell(
                    child: Center(child: Text("Error Occured, Tap to retry !")),
                    onTap: () => setState(() {}),
                  );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }


  Widget _listAllBillboard() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    //button search
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        SearchBar()
                      ],
                    )),
              ],
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: FutureBuilder(
                future: ApiService.getTransaction(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return snapshot.connectionState == ConnectionState.done
                        ? GridView.builder(
                            padding: EdgeInsets.only(top: 5),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return ProductsListItem(
                                  name: snapshot.data[index].name,
                                  currentPrice: snapshot.data[index].price,
                                  originalPrice: 699,
                                  discount: 25,
                                  // entityId: snapshot.data[index].entityId,
                                  imageUrl:
                                      snapshot.data[index].image
                              );
                            },
                          )
                        : InkWell(
                            child: Center(
                              child: Text("ERROR OCCURRED, Tap to retry !"),
                            ),
                            onTap: () => setState(() {}),
                          );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
        )
      ],
    );
  }


  Widget _all() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
              ],
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height - 215,
          child: Center(
            child: FutureBuilder(
                future: ApiService.getTransaction(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return snapshot.connectionState == ConnectionState.done
                        ? GridView.builder(
                            padding: EdgeInsets.only(top: 5),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return ProductsListItem(
                                  name: snapshot.data[index].name,
                                  currentPrice: snapshot.data[index].price,
                                  originalPrice: 699,
                                  discount: 25,
                                  // entityId: snapshot.data[index].entityId,
                                  imageUrl:
                                      ("http://debug.adpoint.id/media/catalog/product${snapshot.data[index].image}"),
                              );
                            },
                          )
                        : InkWell(
                            child: Center(
                              child: Text("ERROR OCCURRED, Tap to retry !"),
                            ),
                            onTap: () => setState(() {}),
                          );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
        )
      ],
    );
  }
  
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

