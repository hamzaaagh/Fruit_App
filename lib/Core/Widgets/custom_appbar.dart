import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.suffixIcon});
  final String title;
  final Icon? suffixIcon;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppStyles.bold20),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16),
          child: Icon(Icons.arrow_back_ios, size: 24),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Logic هنا
          },
          child:
              suffixIcon ??
              const SizedBox(), // إذا لم يتم توفير suffixIcon، سيتم عرض SizedBox فارغ
        ),
      ],
    );
  }
}
