import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:proclivity_digitech/models/serviceList_model.dart';

class ServiceList extends StatefulWidget {
  ServiceList({Key key}) : super(key: key);

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  double height;
  double width;

  _height() {
    return height = MediaQuery.of(context).size.height;
  }

  _width() {
    return width = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 1, right: 1),
      child: new SizedBox(
          height: 150,
          child: new ListView.builder(
            //controller: PageController(viewportFraction: 0.8),
            scrollDirection: Axis.horizontal,
            // pageSnapping: true,
            itemCount: serviceItemsModel.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Service(
                  
                  serviceItemsModel[index].image,
                  serviceItemsModel[index].itemName);
            },
          )),
    );
  }
}

class Service extends StatelessWidget {
 
  final String _image_location;
  final String _image_caption;

  Service(

    this._image_location,
    this._image_caption,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: new Card(
          elevation: 5,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: new RoundedRectangleBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.primaryVariant, width: 0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: new Stack(
            children: [
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //  SizedBox(height: 5),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Hero(
                        tag: _image_location.toString(),
                        child: new Image(
                          image: new AssetImage(_image_location),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      width: double.infinity,
                      decoration: new BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary,
                            
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: new AutoSizeText(_image_caption,
                        textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal )),
                      ))
                ],
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
      ),
    );
  }
}
