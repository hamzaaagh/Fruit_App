import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_assets.dart';
import 'package:fruit_app/Features/OnBoarding/Presentation/Views/Widgets/custom_rich_text.dart';
import 'package:fruit_app/Features/OnBoarding/Presentation/Views/Widgets/page_view_item.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          vectorcolor: Color(0xFFFFF6E5),
          title: CustomRichText(),
          midleimage: Assets.assetsImagesFruitbasket,
          description:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
         isfirstpage: true,
        ),
        PageViewItem(
          vectorcolor: Color(0xffB0E8C7),
          midleimage: Assets.assetsImagesPineapple,
          title: Text(
            "ابحث وتسوق",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          description:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          isfirstpage: false,
        ),
      ],
    );
  }
}
