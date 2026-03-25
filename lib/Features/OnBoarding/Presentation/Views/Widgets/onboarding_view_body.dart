import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_assets.dart';
import 'package:fruit_app/Core/utils/app_colors.dart';
import 'package:fruit_app/Features/OnBoarding/Presentation/Views/Widgets/custom_rich_text.dart';
import 'package:fruit_app/Features/OnBoarding/Presentation/Views/Widgets/page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    
     _pageController = PageController();
    
    
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (int index) {
            setState(() {
              currentPage = index; 
            });
          },
      children: [
        PageViewItem(
          vectorcolor: AppColors.lightorange,
          title: CustomRichText(),
          midleimage: Assets.assetsImagesFruitbasket,
          description:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",

          currentpage: 0,
        ),
        PageViewItem(
          vectorcolor: AppColors.lightblue,
          midleimage: Assets.assetsImagesPineapple,
          title: Text(
            "ابحث وتسوق",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          description:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",

          currentpage: 1,
        ),
      ],
    );
  }
}
