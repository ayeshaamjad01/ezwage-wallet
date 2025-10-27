import 'package:ezwage/ui/ezwager/controller/ezwager_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

import '../model/ezwager_model.dart';
import '../model/getLinkedinPostsModel.dart';

class EZWagerView extends StatefulWidget {
  @override
  State<EZWagerView> createState() => _EZWagerViewState();
}

class _EZWagerViewState extends State<EZWagerView> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    context.read<EZWagerProvider>().getEmbedPostsList(page, context);
    scrollController.addListener(() {
      _scrollController();
    });
  }

  int page = 1;

  @override
  Widget build(BuildContext context) {
    var loadMore = context.read<EZWagerProvider>().isLoadMore;
    var postsData = context.watch<EZWagerProvider>().iframesList;
    bool apiLoadData = context.watch<EZWagerProvider>().apiLoadData;

    return (postsData.isEmpty && apiLoadData == false)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircularProgressIndicator(),
              ),
              SizedBox(
                height: 100.sp,
              )
            ],
          )
        : (postsData.isEmpty && apiLoadData == true)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Stay tuned for Amazing Articles"),
                  ),
                  SizedBox(
                    height: 120.sp,
                  )
                ],
              )
            : ezWagerWidget(postsData, loadMore);
  }

  Widget ezWagerWidget(List<GetLinkedinPostsModel> postsData, loadMore) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      controller: scrollController,
      child: Column(
        children: [
          ListView.builder(
              itemCount: postsData.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: ((context, index) {
                var url =
                    context.watch<EZWagerProvider>().iframesList[index].url;
                // var finalUrl = ' <iframe src= '+ url.toString() + 'frameborder="0" allowfullscreen="" title="Embedded post"></iframe> ';
                return HtmlWidget(
                  url,
                  onTapUrl: (url) {
                    EZWageModel.launchURL(url, context);
                    return true;
                  },
                );
              })),
          SizedBox(
            height: 130,
          )
        ],
      ),
    );
  }

  Future<void> _scrollController() async {
    if (GetLinkedinPostsModel.currentPage == GetLinkedinPostsModel.totalPages)
      return;
    if (context.read<EZWagerProvider>().isLoadMore) return;
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      context.read<EZWagerProvider>().setApiLoadMoreProcess(true);
      page = page + 1;
      await context.read<EZWagerProvider>().getEmbedPostsList(page, context);
      context.read<EZWagerProvider>().setApiLoadMoreProcess(false);
    }
  }
}
