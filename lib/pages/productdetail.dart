import 'package:eudekatugas3/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:rupiah/rupiah.dart';

class Detailproduct extends StatefulWidget {
  final int entityId;
  const Detailproduct({Key key, this.entityId}) : super(key: key);

  @override
  _DetailproductState createState() => _DetailproductState();
}

class _DetailproductState extends State<Detailproduct> {
  final dashtextMoneyBold =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final dashtextTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final dashtextMidTitle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  final dashtextMidTitleReg = TextStyle(fontSize: 18);
  final dashtextSubtitle = TextStyle(fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.refresh),
              tooltip: 'Refresh',
              onPressed: () {
                print("refresh");
                setState(() {});
              },
            ),
          )
        ],
        title: Text("View Product",
            style: TextStyle(color: Colors.white, fontSize: 25)),
        elevation: 8,
        backgroundColor: HexColor("042548"),
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          _buildContentPage(),
        ],
      ),
    );
  }

  _buildContentPage() {
    return Container(
                    padding: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("#000332415" ,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                          Row(
                            children: <Widget>[
                              Text(
                                "Product Categoty",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Lapngan futsal",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Product Name ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                " ",
                                style: TextStyle(),
                              ),
                              SizedBox(width: 60),
                            ],
                          ),
                          // Row(
                          //   children: <Widget>[
                          //      Text("Kode Media",style: TextStyle(fontWeight: FontWeight.bold),),
                          //   ],
                          // ),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                             Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    height: 200.0,
                    // child: ClipRect(
                    //   child: PhotoView(

                    //     imageProvider: NetworkImage("${BaseImgUrl.BASE_IMG_URL}${snapshot.data[0].image.toString()}"),
                    //     maxScale: PhotoViewComputedScale.covered * 2.0,
                    //     minScale: PhotoViewComputedScale.contained * 0.8,
                    //     initialScale: PhotoViewComputedScale.covered,
                    //   ),
                    // ),
                  ),
                            // Container(
                            //   margin: const EdgeInsets.only(
                            //       left: 10.0, right: 10.0, top: 10),
                            //   width: MediaQuery.of(context).size.width / 1,
                            //   height: MediaQuery.of(context).size.height / 5,
                            //   child: Image.network(
                            //     "https://debug.adpoint.id/media/catalog/product${snapshot.data[0].image.toString()}",
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),

                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Termin pembayaran "),
                                SizedBox(
                                  width: 48,
                                ),
                                Text("1")
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Minimal durasi          "),
                                SizedBox(
                                  width: 48,
                                ),
                                Text("1 Bulanan"),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Product Images",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            // Container(
                            //   child: _buildpathimage(),
                            // ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 5, top: 15),
                                  child: Text("Description :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ListView.builder(
                                      itemCount: 1,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          // child: SingleChildScrollView(
                                          //   scrollDirection: Axis.horizontal,
                                          child: Text(
                                            "Deskripsi lapangan futsal"
                                                  .toString(),
                                              textAlign: TextAlign.justify),
                                        );
                                        // );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Periode"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text("Price")
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Bulanan"),
                                SizedBox(
                                  width: 48,
                                ),
                                Text(rupiah("100000000"))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Tahunan"),
                                SizedBox(
                                  width: 45,
                                ),
                                Text(rupiah("1100000000"))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ])))
                        ]
                        )
                        );
  }

  // _buildpathimage() {
  //   return FutureBuilder(
  //       // future: ApiService.getPathImage(widget.entityId),
  //       builder: (BuildContext context, AsyncSnapshot snapshot) {
  //         if (snapshot.connectionState == ConnectionState.done) {
  //           return snapshot.connectionState == ConnectionState.done
  //               ? Container(
  //                   padding: EdgeInsets.only(top: 5),
  //                   height: MediaQuery.of(context).size.height * 0.19,
  //                   child: ListView.builder(
  //                       scrollDirection: Axis.horizontal,
  //                       itemCount: snapshot.data.length,
  //                       itemBuilder: (context, index) {
  //                         return Container(
  //                           width: 200,
  //                           child: Card(
  //                             clipBehavior: Clip.antiAlias,
  //                             child: Container(
  //                                 // height:
  //                                 //     MediaQuery.of(context).size.height,
  //                                 width: MediaQuery.of(context).size.width,
  //                                 // child: Image.network(
  //                                   // "${BaseImgUrl.BASE_IMG_URL}${snapshot.data[index].value.toString()}",
  //                                   // fit: BoxFit.cover,
  //                                 // )
  //                                 ),
  //                           ),
  //                         );
  //                       }),
  //                 )
  //               : InkWell(
  //                   child: Center(
  //                     child: Text("Error Occured, Tap to retry !"),
  //                   ),
  //                   onTap: () => setState(() {}),
  //                 );
  //         }
  //         return Center(
  //           child: CircularProgressIndicator(),
  //         );
  //       });
  // }

  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlText.replaceAll(exp, '');
  }
}
