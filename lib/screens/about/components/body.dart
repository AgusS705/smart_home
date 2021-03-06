import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/about/components/team_card.dart';
import 'package:smart_home/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: <Widget>[
        Container(
          height: SizeConfig.screenHeight * .35,
          decoration: BoxDecoration(
            color: kBgColorPrimary,
          ),
        ),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image(image: kLogo),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SDGs 7',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Afforfable and Clean Energy',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.only(bottom: 10),
                children: <Widget>[
                  TeamCard(
                    photoSrc: 'assets/images/teams/agus.png',
                    nama: 'Agus Sepriyandiansah',
                    nim: '182410102081',
                  ),
                  TeamCard(
                    photoSrc: 'assets/images/teams/jendra.png',
                    nama: 'Jendra Bayu Nugraha',
                    nim: '182410102043',
                  ),
                  TeamCard(
                    photoSrc: 'assets/images/teams/toni.png',
                    nama: 'M. Fathony Ramdhan',
                    nim: '182410102019',
                  ),
                ],
              ))
            ],
          ),
        ))
      ],
    );
  }
}
