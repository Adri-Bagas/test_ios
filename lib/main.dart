import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ScaleSize/ScaleSize.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.68,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset("assets/img/profile_pic.png"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ADRI BAGAS",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                          Text(
                            "abagaswitjaksono@gmail.com",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.09,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                      left: 30,
                      right: 30,
                    ),
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.end,
                          spacing: 65,
                          runSpacing: 10,
                          direction: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.05,
                                    maxWidth:
                                        MediaQuery.of(context).size.height *
                                            0.05,
                                  ),
                                  child:
                                      Image.asset("assets/img/calender.png"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Attendance",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                    ),
                                    textScaleFactor: ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                    maxWidth:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  child:
                                  Image.asset("assets/img/date_picker.png"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Itinerary",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                    textScaleFactor: ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                    maxWidth:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  child:
                                  Image.asset("assets/img/schedule.png"),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Permit",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                    textScaleFactor: ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ],
                            ),
                            if (MediaQuery.of(context).size.width >= 290) ...[
                              Column(
                                children: [
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      maxWidth:
                                      MediaQuery.of(context).size.height *
                                          0.05,
                                    ),
                                    child: Image.asset(
                                        "assets/img/report.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Report",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textScaleFactor: ScaleSize.textScaleFactor(context),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      maxWidth:
                                      MediaQuery.of(context).size.height *
                                          0.05,
                                    ),
                                    child: Image.asset(
                                        "assets/img/guidelines.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Guidelines",
                                      style: GoogleFonts.poppins(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textScaleFactor: ScaleSize.textScaleFactor(context),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            Column(
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.05,
                                    maxWidth:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) {
                                            return DraggableScrollableSheet(
                                              initialChildSize: 0.7,
                                              minChildSize: 0.2,
                                              maxChildSize: 0.7,
                                              builder: (context, controller) {
                                                return Container(
                                                  padding: EdgeInsets.only(
                                                    top: 50,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 20,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 10.0,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional
                                                            .topCenter,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        top: -30,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            bottom: 20,
                                                          ),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                          height: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  10),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SingleChildScrollView(
                                                        child: Wrap(
                                                          spacing: 20,
                                                          runSpacing: 10,
                                                          direction:
                                                              Axis.horizontal,
                                                          children: [

                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          });
                                    },
                                    child: Image.asset(
                                        "assets/img/three_dots.png"),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "More",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                    textScaleFactor: ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    "Informasi",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      "Anda Memiliki 1 Itinerary",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    subtitle: Text(
                      "10 Aug 2023",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    trailing: GestureDetector(
                      child: Image.asset("assets/img/button_reload.png", height: 40, width: 40),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/img/asset1.png",
                                  height: 50,
                                  width: 50,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "SADA TECHNOLOGY(DISTRIBUTION)(Kode : SADA SOMETHING SOMETHING)",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                      ),
                                  Text(
                                    "Alamat",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                        fontSize: 12,
                                    ),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.clip,
                                  ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "CHECK IN: ",
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                  style: GoogleFonts.poppins(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "11:12:17",
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 5,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Text(
                                      "Istirahat",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      iconSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              width: double.infinity,
                              height: 2,
                              decoration:
                                  BoxDecoration(color: Colors.blueAccent),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: SwipeableButtonView(
                                onFinish: () {},
                                onWaitingProcess: () {},
                                activeColor: Colors.red,
                                buttonWidget: Container(
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                                buttonText: "SLIDE TO CHECKOUT",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top + 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active),
                color: Colors.blue,
                iconSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
