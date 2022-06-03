
import 'package:clan/providers/all_in_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AchievementPart extends StatelessWidget {
  const AchievementPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Label(text: 'Achievements',),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Row(
            children: [
              Text(
                'Current league',
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              Spacer(),
              SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    'assets/currentl.jpg',
                    fit: BoxFit.cover,
                  )),
              Spacer()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Row(
            children: [
              Text(
                'League ranking',
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              const Spacer(),
              Text(
                '11th',
                textAlign: TextAlign.start,
                style: GoogleFonts.aBeeZee(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Spacer(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Experience',
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                '2000xp',
                textAlign: TextAlign.start,
                style: GoogleFonts.aBeeZee(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

class Label extends StatelessWidget {
  final String text;
  final double textSize;

  final Color textColor;
  const Label({
    Key? key, required this.text,   this.textColor=Colors.yellow,   this.textSize=28,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Text(
          text,
          maxLines: null,
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
              color: textColor),
        ),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Divider(
        color: Colors.white,
        thickness: 2,
        height: 32,
      ),
    );
  }
}

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.yellowAccent, width: 2.0)),
                width: constraints.maxWidth * 0.9,
                height: constraints.maxWidth * 0.9,
                child: GridTile(
                    footer: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text(
                        'Clan name: lorem Ipsum',
                        style: GoogleFonts.montserrat(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          '28 members, 5 online',
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      'assets/home_img.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ))),
          ),
        );
      },
    );
  }
}
class PastFeaturedPerformance extends StatelessWidget {
  const PastFeaturedPerformance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Label(text: 'Past featured performances'),
        Consumer<AllInOneProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              children: value.pastAcheivementdata.map((e) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: Label(
                          text: e,
                          textColor: Colors.pink,
                          textSize: 20,
                        )),
                  ],
                );
              }).toList(),
            );
          },
        )
      ],
    );
  }
}
class LiveClanActivities extends StatelessWidget {
  const LiveClanActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Label(text: 'Live clan activities on platform'),
        Consumer<AllInOneProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              children: value.liveClanActivitiesdata.map((e) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 144,
                  child: Center(
                    child: Stack(

                      children: [
                        Image.asset('assets/live.jpg',fit: BoxFit.contain,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            e,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          },
        )
      ],
    );
  }
}
class ClanDiscussion extends StatelessWidget {
  const ClanDiscussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Label(text: 'Clan Discussions'),
        Consumer<AllInOneProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              children:
              value.clanDiscusiondata.map((e) =>
                ListTile(
                  title:                         Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${e['name']}:',
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                  ),
                  subtitle:                         Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${e['count']} unread messages',
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),

                ),
              ).toList()
            );
          },
        )
      ],
    );
  }
}
