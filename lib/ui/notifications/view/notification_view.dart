import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/notifications/controller/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ezwage/ui/notifications/presentaion/notifcations_list.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _notificationviewState createState() => _notificationviewState();
}

class _notificationviewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    bool showNotifications =
        context.watch<NotificationProvider>().showNotifications;
    bool notificationsLoaded =
        context.watch<NotificationProvider>().loadNotificcations;
    var _titleList =
        context.watch<NotificationProvider>().notificationTitleList;
    var _descriptionList =
        context.watch<NotificationProvider>().notificationDescriptionList;
    var _notificationTypeList =
        context.watch<NotificationProvider>().notificationTypeList;
    var _notificationIdList =
        context.watch<NotificationProvider>().notificationIdList;
    if (notificationsLoaded == false)
      context.read<NotificationProvider>().getNotifications(context);
    return showNotifications == true
        ? ListNotifications(_titleList, _descriptionList, _notificationTypeList,
            _notificationIdList, '')
        //  DefaultTabController(
        //     length: 3,
        //     initialIndex: 0,
        //     child: Stack(
        //       children: [
        //         // Padding(
        //         //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        //         //   child: DecoratedBox(
        //         //     decoration: BoxDecoration(
        //         //       border: Border(
        //         //           bottom: BorderSide(color: Colors.grey, width: 2)),
        //         //     ),
        //         //     child: TabBar(
        //         //       indicatorColor: Colors.blue,
        //         //       unselectedLabelColor: Colors.grey,
        //         //       labelColor: Colors.blue,
        //         //       labelStyle: appLanguage == 'ur'
        //         //           ? GoogleFonts.notoNastaliqUrdu(
        //         //               fontSize: 9,
        //         //             )
        //         //           : TextStyle(fontSize: 12),
        //         //       tabs: [
        //         //         Tab(
        //         //           text: translateText('All'),
        //         //         ),
        //         //         Tab(
        //         //           text: translateText('Successful'),
        //         //         ),
        //         //         Tab(
        //         //           text: translateText('Unsuccessful'),
        //         //         ),
        //         //       ],
        //         //     ),
        //         //   ),
        //         // ),
        //         // Padding(
        //         //   padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
        //         //   child: TabBarView(
        //         //     children: [
        //         //       AllNotificationsList(
        //         //           _titleList, _descriptionList, _notificationTypeList),
        //         //       SuccessNotificationsList(
        //         //           _titleList, _descriptionList, _notificationTypeList),
        //         //       UnsuccessNotificationsList(
        //         //           _titleList, _descriptionList, _notificationTypeList),
        //         //     ],
        //         //   ),
        //         // ),

        //       ],
        //     ),
        //   )
        : notificationsLoaded == true
            ? Center(
                child: Text(
                  translateText("No_Notifications"),
                  textScaleFactor: 1,
                ),
              )
            : Column();
  }
}
