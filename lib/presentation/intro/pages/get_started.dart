import 'package:flutter/material.dart';
import 'package:logilinks/common/widgets/widgets.dart';
import 'package:logilinks/core/configs/configs.dart';
import 'package:logilinks/presentation/links/links.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.logoOrange, width: 80, height: 80),
                const Text(
                  "SDVOR",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    fontFamily: "BebasNeue",
                  ),
                ),
                const SizedBox(height: 20),
                // ---------------------------- Меню с кнопками ----------------------------
                Container(
                  width: 330,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xfff7a708),
                  ),
                  child: Column(
                    children: [
                      BasicAppButton(
                        title: "Мобильное комплектование",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MobilePicking(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      BasicAppButton(
                        title: "Мобильная приемка",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MobileAcceptance(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      BasicAppButton(
                        title: "ЕВМ",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const Ewm(),
                            ),
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          throw Exception('This is test exception');
                        },
                        child: const Text('Verify Sentry Setup'),
                      )
                    ],
                  ),
                ),
                // Меню с кнопками
                const SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
