import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "./assets/images/gdglogo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "./assets/images/us_embassy_ethiopia.jpg",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "./assets/images/usaid.jpg",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "./assets/images/wtm.png",
          )
        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
