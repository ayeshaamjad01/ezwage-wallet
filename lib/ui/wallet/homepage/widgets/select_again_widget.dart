import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';

import '../view/see_all_users_page.dart';

class SendAgainWidget extends StatelessWidget {
  const SendAgainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> users = [
      {
        "name": "Alexandria",
        "imagePath": "https://cdn.pixabay.com/photo/2022/06/21/08/57/male-7275452_1280.jpg",
      },
      {
        "name": "Immanuel",
        "imagePath": "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?w=900&q=80",
      },
      {
        "name": "Kayshania",
        "imagePath": "https://plus.unsplash.com/premium_photo-1672239496412-ab605befa53f?w=900&q=80",
      },
      {
        "name": "Ibral",
        "imagePath": "https://images.unsplash.com/photo-1581382575275-97901c2635b7?w=900&q=80",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Send Again",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SeeAllUsersScreen(users: users),
                    ),
                  );
                },
                child: seeAllText(),
              ),
            ],
          ),
        ),
        5.verticalSpace,

        SizedBox(
          height: 80.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: users.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return _Avatar(
                  icon: Icons.add,
                  label: "Add New",
                  isAddNew: true,
                );
              }
              return _Avatar(
                label: users[index - 1]["name"].toString(),
                imagePath: users[index - 1]["imagePath"].toString(),
              );
            },
          ),
        ),
      ],
    );
  }

  Row seeAllText() {
    return Row(
      children: [
        Text(
          "See all",
          style: TextStyle(color: Colors.green, fontSize: 16.sp),
        ),
        4.horizontalSpace,
        Icon(Icons.arrow_forward, color: Colors.green, size: 16.h),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final IconData? icon;
  final String label;
  final String? imagePath;
  final bool isAddNew;

  const _Avatar({
    this.icon,
    required this.label,
    this.imagePath,
    this.isAddNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.w),
      child: Column(
        children: [
          isAddNew
              ? DottedBorder(
            options: const CircularDottedBorderOptions(
              dashPattern: [6, 4],
              strokeWidth: 2,
              strokeCap: StrokeCap.round,
              color: Colors.blueAccent
            ),
            child: Container(
              width: 23.r * 2,
              height: 23.r * 2,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.add, color: Colors.blue, size: 28.sp),
              ),
            ),
          )
              : CircleAvatar(
            radius: 24.r,
            backgroundColor: Colors.grey.shade200,
            backgroundImage:
            imagePath != null ? NetworkImage(imagePath!) : null,
            child: imagePath == null
                ? const Icon(Icons.person, color: Colors.white)
                : null,
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(fontSize: 12.sp, color: isAddNew ? Colors.blueAccent : null),
            overflow: TextOverflow.ellipsis,

          ),
        ],
      ),
    );
  }
}
