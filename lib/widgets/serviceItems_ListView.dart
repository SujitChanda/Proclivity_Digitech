import 'package:flutter/rendering.dart';
import 'package:proclivity_digitech/models/serviceList_model.dart';
import 'package:flutter/material.dart';

class ServiceItems extends StatefulWidget {
  ServiceItems({Key key}) : super(key: key);

  @override
  _ServiceItemsState createState() => _ServiceItemsState();
}

class _ServiceItemsState extends State<ServiceItems> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: new ListView.builder(
         // physics: new ClampingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
          // gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          //     childAspectRatio: 1 / 1.3, crossAxisCount: 2),
          shrinkWrap: true,
         // itemCount: 4,
          itemBuilder: (_, index) {
            return new SizedBox(
              height: double.infinity,
              //color: Colors.red,
              child: new Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: new RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red, width: 0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: new Stack(
                  children: [
                    new Container(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //  SizedBox(height: 5),
                          new Stack(children: <Widget>[
                            new Hero(
                              tag: serviceItemsModel[index].id,
                              child: new Image(
                                image: new AssetImage(
                                    serviceItemsModel[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     color:
                            //         Colors.greenAccent.withOpacity(0.2),
                            //     borderRadius: BorderRadius.only(
                            //       topLeft: Radius.circular(8.0),
                            //       topRight: Radius.circular(0),
                            //       bottomLeft: Radius.circular(0),
                            //       bottomRight: Radius.circular(8.0),
                            //     ),
                            //   ),
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(
                            //       left: 10,
                            //       right: 3,
                            //     ),
                            //     child: AutoSizeText(
                            //         "${_percentage(product.oldPrice, product.price)}% off",
                            //         style: Theme.of(context)
                            //             .textTheme
                            //             .bodyText2
                            //             .copyWith(color: Colors.green)),
                            //   ),
                            // ),
                          ]),
                          new Expanded(
                            child: new Container(
                                decoration: new BoxDecoration(
                                  color: Colors.grey[200].withOpacity(0.7),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(4.0),
                                    bottomRight: Radius.circular(4.0),
                                  ),
                                ),
                                child: new Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    new Container(
                                      child: new Text(
                                        serviceItemsModel[index].itemName,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            .copyWith(
                                                fontSize: 16,
                                                color: Colors.red),
                                      ),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    new Material(
                      color: Colors.transparent,
                      child: new InkWell(
                        onTap: () {
                          //                         Navigator.push(
                          //   context,
                          //  new  MaterialPageRoute(
                          //     builder: (context) => ProductPage(
                          //       p_products: popularItemsModel[index],
                          //     ),
                          //   ));
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          //shrinkWrap: true,
          // childAspectRatio: 1 / 1.5,

          ),
    );
  }
}
