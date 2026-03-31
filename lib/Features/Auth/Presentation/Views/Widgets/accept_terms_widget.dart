import 'package:flutter/material.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/custom_check_box.dart';
import 'package:fruit_app/Features/Auth/Presentation/Views/Widgets/custom_rich_text_auth.dart';

class AcceptTermsWidget extends StatelessWidget {
  const AcceptTermsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckbox(),
        const SizedBox(width: 20),
        Expanded(
          child: CustomRichTextAuth(
            text1: "من خلال إنشاء حساب ، فإنك توافق على  ",
            text2: "الشروط والأحكام الخاصة بنا  ",
          ),
        ),
      ],
    );
  }
}