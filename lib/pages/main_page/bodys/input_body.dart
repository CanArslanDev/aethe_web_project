import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class MainPageInputBody extends StatelessWidget {
  const MainPageInputBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/home_background.png",
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _appbarWidget(),
              _mainBody,
              _moreFuture,
            ],
          ),
          colorTransitionWidget(context)
        ],
      ),
    );
  }

  Widget colorTransitionWidget(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 100.w,
          height: 3.w,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1.5.w),
                  topRight: Radius.circular(1.5.w))),
        ),
      );

  Widget get _moreFuture => Padding(
        padding: EdgeInsets.only(top: 3.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "View More Future",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 1.2.w,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/down_arrow.png"),
          ],
        ),
      );

  Widget get _mainBody => Padding(
        padding: EdgeInsets.only(top: 5.h),
        child: Center(
          child: SizedBox(
            height: 75.h,
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/app_view.png",
                  height: 37.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aethe",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 3.w),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          "Aethe is a place where you can create a home for your communities and friends. A place where you can stay in touch and have fun, both in text and audio. It doesn't matter if you're a school club, playgroup, world-class art society, or just a few friends looking to hang out; Aethe makes it easy for you to talk more and spend more time each day.",
                          style: GoogleFonts.inter(
                              color: Colors.white54, fontSize: 1.w),
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          html.window.open(
                              'https://play.google.com/store/apps/details?id=com.aethe.corp&hl=tr&gl=US',
                              'new tab');
                        },
                        child: Image.asset(
                          "assets/download_button.png",
                          width: 13.w,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          "With ChatGPT & ChatSonic,and more AI",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 1.w,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/chatgpt_logo.png",
                                  height: 4.h,
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Text(
                                  "ChatGPT",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 0.8.w,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/chatsonic_logo.png",
                                  height: 4.h,
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Text(
                                  "ChatSonic",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 0.8.w,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Image.asset(
                        "assets/play_store_qr.png",
                        height: 13.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget _appbarWidget() {
    Widget text(String text, Color color, FontWeight? fontWeight) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.2.w),
        child: Text(
          text,
          style: GoogleFonts.inter(
              color: color, fontSize: 1.23.h, fontWeight: fontWeight),
        ),
      );
    }

    return SizedBox(
      width: 100.w,
      height: 3.w,
      child: Padding(
        padding: EdgeInsets.only(left: 17.5.w, right: 18.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.6.w, horizontal: 0.3.w),
                  child: Image.asset("assets/aethe_logo.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.3.w),
                  child: Row(
                    children: [
                      Text(
                        "Aethe",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 1.4.h,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      text("What is Aethe?", const Color(0xFF705cf6), null),
                      text("Download", Colors.white, null),
                      text("Features", Colors.white, null),
                      text("Team", Colors.white, null),
                      text("Contact", Colors.white, null),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                text("Contant", Colors.white, FontWeight.bold),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.5),
                    borderRadius: BorderRadius.circular(300),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.7.w, vertical: .5.w),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 1.23.h,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
