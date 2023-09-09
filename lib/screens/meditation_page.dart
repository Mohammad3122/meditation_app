import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/constants/constants.dart';
import 'package:meditation_app/widgets/navbar_widget.dart';
import 'package:meditation_app/widgets/searchbar.dart';
import 'package:meditation_app/widgets/sessioncard_widget.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BuildBottomnavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'arabic',
                        fontSize: 49.0,
                      ),
                    ),
                    const Text(
                      '٢٠ دقیقه آموزش',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'nasim',
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی تری \nداشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'vazir',
                        fontSize: 14,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.4,
                        height: 100,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        BuildSessionCard(
                          sessionNumber: 'ویدیو شماره ١',
                          isDone: true,
                          press: () {
                            context.push('/video_playe_page');
                          },
                        ),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره٢'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره٣'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره٤'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره٥'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره٦'),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'پیشنهاد ما',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'arabic',
                        fontSize: 24.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0.0, 17.0),
                            blurRadius: 23,
                            spreadRadius: -13.0,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگای پیشرفته',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'nasim',
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'nasim',
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
