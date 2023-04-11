import 'package:flutter/material.dart';
import 'package:login/src/constants/colors.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/text_strings.dart';


class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                // ignore: prefer_const_constructors
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                    Flexible(child: Image(image: AssetImage(tBannerImage1)))
                  ],
                ),
                const SizedBox(height: 25),
                Text(tDashboardBannerTitle1, style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis),
                Text(tDashboardBannerSubTitle, style: txtTheme.headline4, maxLines: 1, overflow: TextOverflow.ellipsis),
              ]
              ),
          ),
        ),
        const SizedBox(height: 25),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                        Flexible(child: Image(image: AssetImage(tBannerImage2)))
                      ],
                    ),
                    Text(tDashboardBannerTitle1, style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                    Text(tDashboardBannerSubTitle, style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                  ]
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {}, 
                  child: const Text(tDashboardButton)),
              )
            ],
          )
        )
      ],
    );
  }
}

// class DashboardBanners extends StatelessWidget {
//   const DashboardBanners({
//     super.key,
//     required this.txtTheme,
//   });

//   final TextTheme txtTheme;

//   @override
//   Widget build(BuildContext context) {
//     final list = DashboardBannersModel.list;
//     return SizedBox(
//       height: 45,
//       child: ListView.builder(
//         itemCount: list.length,
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         // crossAxisAlignment: CrossAxisAlignment.start,
    
//         // children: [
//           GestureDetector(
//             onTap: list[index].onPress,
//             child: SizedBox(
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               child: Column(
//                 children: [
//                   // ignore: prefer_const_constructors
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const[
//                       Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
//                       Flexible(child: Image(image: AssetImage(tBannerImage1)))
//                     ],
//                   ),
//                   const SizedBox(height: 25),
//                   Text(tDashboardBannerTitle1, style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis),
//                   Text(tDashboardBannerSubTitle, style: txtTheme.headline4, maxLines: 1, overflow: TextOverflow.ellipsis),
//                 ],
//                 ),
//             ),
//           ),
//           // const SizedBox(height: 25),
//           // Expanded(
//           //   child: Column(
//           //     children: [
//           //       Container(
//           //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
//           //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//           //         child: Column(
//           //           children: [
//           //             // ignore: prefer_const_constructors
//           //             Row(
//           //               crossAxisAlignment: CrossAxisAlignment.start,
//           //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //               children: const[
//           //                 Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
//           //                 Flexible(child: Image(image: AssetImage(tBannerImage2)))
//           //               ],
//           //             ),
//           //             Text(tDashboardBannerTitle1, style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
//           //             Text(tDashboardBannerSubTitle, style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
//           //           ]
//           //         ),
//           //       ),
//           //       SizedBox(
//           //         width: double.infinity,
//           //         child: OutlinedButton(
//           //           onPressed: () {}, 
//           //           child: Text(tDashboardButton)),
//           //       )
//           //     ],
//           //   )
//           // )
//         // ],
//       ),
//     );
//   }
// }
