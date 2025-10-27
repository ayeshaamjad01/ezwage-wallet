import 'dart:ui';

class IconViewModel {
  final String title;
  final String? subTitle;
  final String imagePath;
  final VoidCallback? onTap;

  IconViewModel({required this.title, required this.imagePath, this.subTitle, this.onTap,});
}
