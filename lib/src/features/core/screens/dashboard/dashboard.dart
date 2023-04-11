import 'package:flutter/material.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/search.dart';

class Dashboard extends StatelessWidget{
  const Dashboard(
    {Key? key, 
    // required this.isDark
    }) 
    :super(key: key);

// final bool isDark;
  @override
  Widget build(BuildContext context){

    final txtTheme = Theme.of(context).textTheme;
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: DashboardAppBar(isDark: isDark,),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //heading
                Text(tDashboardTitle, style: txtTheme.bodyText2),
                Text(tDashboardHeading, style: txtTheme.headline2),
                const SizedBox(height: tDashboardPadding),

              //search box
                DashboardSearchBox(txtTheme: txtTheme),
                const SizedBox(height: tDashboardPadding),

                //categories
                DashboardCategories(txtTheme: txtTheme),
                const SizedBox(height: tDashboardPadding),

                //Banner
                DashboardBanners(txtTheme: txtTheme),
                const SizedBox(height: tDashboardPadding),

                //top courses
                // Text(tDashboardTopCourses, style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
                // DashboardTopCourses(txtTheme: txtTheme)
            ],
          ),
        )
      ),
    );
  }
}


