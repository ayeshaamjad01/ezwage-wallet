import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/ui/notifications/controller/notification_remove.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListNotifications extends StatefulWidget {
  var notificationsTitleList = [];
  var notificationsDescriptionList = [];
  var notifcationTypeList = [];
  var notificationIdList = [];
  String selectedNotificationType;
  ListNotifications(
      this.notificationsTitleList,
      this.notificationsDescriptionList,
      this.notifcationTypeList,
      this.notificationIdList,
      this.selectedNotificationType);
  @override
  State<ListNotifications> createState() => _ListNotificationsState();
}

class _ListNotificationsState extends State<ListNotifications> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return ListView.builder(
        itemCount: widget.notificationsTitleList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: ((context, index) {
          return widget.notifcationTypeList[index]
                  .toString()
                  .contains(widget.selectedNotificationType)
              ? Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                    child: Dismissible(
                      key: UniqueKey(),
                      background: Container(
                        decoration: ShapeDecoration(
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Align(
                            alignment: appLanguage == 'en'
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: FaIcon(
                              FontAwesomeIcons.trashCan,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        widget.notifcationTypeList.removeAt(index);
                        widget.notificationsDescriptionList.removeAt(index);
                        widget.notificationsTitleList.removeAt(index);
                        removeNotification(
                            widget.notificationIdList[index], context);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.notificationsTitleList[index],
                                  textScaleFactor: 1,
                                  style: GoogleFonts.dmSans(
                                      fontSize: shortestSide > 600 ? 12.sp : 12,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          widget.notifcationTypeList[index] ==
                                                  '2'
                                              ? Color(0xffFF6B6B)
                                              : Color(0xff2FB461)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.notificationsDescriptionList[index],
                                  textScaleFactor: 1,
                                  style: GoogleFonts.dmSans(
                                      fontSize: shortestSide > 600 ? 12.sp : 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1C1B1B)),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                )
              : Column();
        }));
  }
}
