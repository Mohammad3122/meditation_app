import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/widgets/navbar_widget.dart';
import 'package:meditation_app/widgets/category_widget.dart';
import 'package:meditation_app/widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  'assets/images/undraw_pilates_gpdb.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'سارای عزیز، برای مدیــــتیشن \nآمـــاده ای؟',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'nasim',
                          fontSize: 33.0,
                        ),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        const BuildCardCategory(
                          title: 'رژیم پیشنهادی',
                          svgPicture: 'assets/icons/Hamburger.svg',
                        ),
                        const BuildCardCategory(
                          title: 'نرمش',
                          svgPicture: 'assets/icons/Excrecises.svg',
                        ),
                        BuildCardCategory(
                          title: 'مدیتیشن',
                          svgPicture: 'assets/icons/Meditation.svg',
                          press: () {
                            context.push('/meditaion_page');
                          },
                        ),
                        const BuildCardCategory(
                          title: 'یوگا',
                          svgPicture: 'assets/icons/yoga.svg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
