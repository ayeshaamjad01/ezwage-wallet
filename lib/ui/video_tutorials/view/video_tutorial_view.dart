import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/video_tutorials/model/youtube_model.dart';
import 'package:ezwage/ui/video_tutorials/view/youtube_video_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoTutorialView extends StatefulWidget {
  const VideoTutorialView({Key? key}) : super(key: key);

  @override
  _videotutorialviewState createState() => _videotutorialviewState();
}

class _videotutorialviewState extends State<VideoTutorialView> {
  List<YoutubeModel> _youtubeVideoIds = [
    // YoutubeModel(id: 1, youtubeId: 'IKxr2gPrEkw'),
    // YoutubeModel(id: 2, youtubeId: 'M3MWO3fRbE8'),

    appLanguage == 'en'
        ? YoutubeModel(id: 1, youtubeId: 'w3OwpLTAHBg')
        : YoutubeModel(id: 1, youtubeId: 'N4RphgHZhHo'),
    YoutubeModel(id: 2, youtubeId: 'mCvC5K9GZKw'),
    // YoutubeModel(id: 2, youtubeId: 'wnc4uGUSAS8'),
  ];
  var videoTitleList = [
    // 'A breakdown of fintech and why Pakistan needs it',
    // 'The fintech revolution for the unbanked is finally here in Pakistan | Feature | Profit Magazine',
    appLanguage == 'en'
        ? 'How to use the EZ Wage app?'
        : 'EZ Wage ایپ   کا استعمال کیسے   کریں؟',
    // 'Pakistan Fintech Series: Episode 1: Fintech Landscape',
    appLanguage == 'en'
        ? 'Navigating the EZ Wage Business Portal'
        : 'EZ Wage بزنس پورٹل پر تشریف لے جانا',
  ];
  var videoDescriptionList = [
    // "In our introductory story on fintech we have simplified the global and local industry and highlighted why Pakistan needs innovative technology to better serve the country's population through financial inclusion. Keep following our channel for more detailed conversations on Pakistan's fintech industry.",
    // "Through regulatory fiat, the State Bank wants to accomplish a level of infrastructure sharing that has hitherto eluded the market. But given the intense competition between telcos and banks to dominate the payments space, can the central bank make everyone play nice?",
    appLanguage == 'en'
        ? "EZ Wage is an earned wage access platform that lets you access your hard earned salary before the designated Payday if you run into unexpected expenses! \nHere is a step-by-step breakdown on using our user-friendly app that ensures everyday is Payday for you.\n\nIf you're interested in getting your company to sign up with EZ Wage, contact us at info@ezwage.com or call us at 03-111-127-100"
        : 'EZ Wage ایک کمایا ہوا اجرت   رسائی پلیٹ   فارم ہے جو آپ    کو نامزد پے ڈے سے پہلے    اپنی محنت    کی کمائی ہوئی تنخواہ تک رسائی حاصل کرنے دیتا ہے اگر آپ   غیر متوقع اخراجات    میں چلتے    ہیں!\nیہاں ہماری صارف    دوست     ایپ    استعمال کرنے کا مرحلہ وار بریک ڈاؤن ہے جو یقینی بناتا ہے کہ ہر روز آپ  کے لیے   تنخواہ کا دن ہے۔\n\nاگر آپ  اپنی کمپنی کو EZ Wage کے ساتھ سائن اپ  کرنے میں دلچسپی رکھتے     ہیں، تو ہم سے info@ezwage.com پر رابطہ کریں یا ہمیں 03111127100 پر کال کریں۔',
    // "Presenting HBL Pakistan Fintech Series: Episode 1: Fintech Landscape.\nTake a deep dive into the opportunities and evolution of the Fintech ecosystem in the country, with industry experts. Featuring Nadeem Hussain - Planet N Group, Atyab Tahir - Mastercard, Najeeb Agrawalla - Onelink Pvt Ltd. and Imran Khan.\n\nStay tuned for more episodes as we carry the conversation further and view Fintech in Pakistan through different lenses.",
    appLanguage == 'en'
        ? "Here is a step-by-step breakdown of using EZ Wage's state of the art Business Portal that ensures everyday is Payday for your employees!\n\nEZ Wage is an earned wage access platform that lets you provide the benefit of earned wage access to your employees incase they run into unexpected expenses during the paid month.\n\nIf you're interested in getting your company to sign up with EZ Wage, contact us at info@ezwage.com or call us at 03-111-127-100"
        : "یہاں EZ Wage کے جدید ترین بزنس پورٹل کو استعمال کرنے کا مرحلہ وار بریک ڈاؤن ہے جو یقینی بناتا ہے کہ ہر روز آپ کے ملازمین کے لیے تنخواہ کا دن ہے!\n\n EZ Wage ایک کمائی ہوئی اجرت تک رسائی کا پلیٹ فارم ہے جو آپ کو اپنے ملازمین کو کمائی ہوئی اجرت تک رسائی کا فائدہ فراہم کرنے دیتا ہے اگر وہ ادا شدہ مہینے کے دوران غیر متوقع اخراجات کا سامنا کرتے ہیں۔\n\n اگر آپ اپنی کمپنی کو EZ Wage کے ساتھ سائن اپ کرنے میں دلچسپی رکھتے ہیں، تو ہم سے info@ezwage.com پر رابطہ کریں یا ہمیں 03111127100 پر کال کریں۔",
  ];

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          for (int index = 0; index < _youtubeVideoIds.length; index++)
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Text(
                          translateText('Popular_Tutorials'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 15,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 14.sp : 17,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor),
                        ),
                      ),
                    ),
                    if (appLanguage == 'ur') CustomSizeBox(20),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child:
                          YoutubeVideoView(_youtubeVideoIds[index].youtubeId),
                    ),
                    CustomSizeBox(10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Align(
                              alignment: appLanguage == 'en'
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                videoTitleList[index],
                                textScaleFactor: 1,
                                textAlign: TextAlign.left,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        color: Color(0xff00A2FF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                      )
                                    : GoogleFonts.poppins(
                                        color: Color(0xff00A2FF),
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            shortestSide > 600 ? 14.sp : 15),
                              ),
                            ),
                          ),
                          CustomSizeBox(10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                              videoDescriptionList[index],
                              textScaleFactor: 1,
                              textAlign: appLanguage == 'en'
                                  ? TextAlign.left
                                  : TextAlign.right,
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    )
                                  : GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          shortestSide > 600 ? 12.sp : 13),
                            ),
                          ),
                          CustomSizeBox(10),
                          Divider(),
                          CustomSizeBox(10)
                        ],
                      ),
                    ),
                    CustomSizeBox(10),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
