import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/widgets/contact_me_button.dart';
import '../../../constants/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
final GlobalKey<ScaffoldState> scaffoldKey;

  const IntroBody({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false, overscroll: false, physics: const ClampingScrollPhysics()
            ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                if (!Responsive.isDesktop(context))
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.23,
                      ),
                      const AnimatedImageContainer(
                        width: 200,
                        height: 250,
                      ),
                    ],
                  ),
                if (!Responsive.isDesktop(context))
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (Responsive.isMobile(context))
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Responsive(
                            desktop: MyPortfolioText(start: 40, end: 50),
                            largeMobile: MyPortfolioText(start: 40, end: 35),
                            mobile: MyPortfolioText(start: 35, end: 30),
                            tablet: MyPortfolioText(start: 50, end: 40)),
                        if (kIsWeb && Responsive.isLargeMobile(context))
                          Container(
                            height: defaultPadding,
                            color: Colors.transparent,
                          ),
                        //Flutter developer text
                        const CombineSubtitleText(),
                        const SizedBox(height: defaultPadding / 2),
                        const Responsive(
                          desktop: AnimatedDescriptionText(start: 14, end: 15),
                          largeMobile: SizedBox(
                              width: 400,
                              child: AnimatedDescriptionText(start: 14, end: 12)),
                          mobile: SizedBox(
                              width: 300,
                              child: AnimatedDescriptionText(start: 14, end: 12)),
                          tablet: AnimatedDescriptionText(start: 17, end: 14),
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        const DownloadButton(),
                        if(Responsive.isMobile(context))...[
                        const SizedBox(
                          height: defaultPadding,
                        ),
                         ContactMeButton(scaffoldKey: scaffoldKey,),
                        ],
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context))
          const AnimatedImageContainer(
            height: 300,
            width: 250,
          ),
        const Spacer()
      ],
    );
  }
}
