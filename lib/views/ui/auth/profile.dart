import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

import 'package:jobhub/views/common/width_spacer.dart';

import '../../common/app_bar.dart';
import '../../common/drawer/drawer_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: CustomAppBar(
            text: "Profile",
            child: Padding(
              padding: EdgeInsets.all(12.0.h),
              child: const DrawerWidget(),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: width,
              height: heiGht * 0.12,
              color: Color(kLight.value),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child:
                            Image(image: AssetImage("assets/images/user.png")),
                        // CachedNetworkImage(
                        //   width: 80.w,
                        //   height: 100.h,
                        //   imageUrl: "http://placehold.it/120x120&text=image1",
                        // ),
                      ),
                    ],
                  ),
                  const WidthSpacer(size: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                              text: "Foo Barr foo barr",
                              style: appstyle(
                                  20, Color(kDark.value), FontWeight.w600)),
                          Row(
                            children: [
                              Icon(
                                MaterialIcons.location_pin,
                                color: Color(kDarkGrey.value),
                              ),
                              const WidthSpacer(size: 5),
                              ReusableText(
                                  text: "New York new york",
                                  style: appstyle(16, Color(kDarkGrey.value),
                                      FontWeight.w600)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Feather.edit,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            const HeightSpacer(size: 20),
            Stack(
              children: [
                Container(
                  width: width,
                  height: heiGht * 0.12,
                  color: Color(kLightGrey.value),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.w),
                        width: 60.w,
                        height: 70.h,
                        color: Color(kLight.value),
                        child: const Icon(
                          FontAwesome5Regular.file_pdf,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                              text: "Resume from JobHub",
                              style: appstyle(
                                  18, Color(kDark.value), FontWeight.w500)),
                          ReusableText(
                              text: "Resume from JobHub",
                              style: appstyle(
                                  16, Color(kDarkGrey.value), FontWeight.w500)),
                        ],
                      ),
                      const WidthSpacer(size: 1)
                    ],
                  ),
                ),
                Positioned(
                  top: 2.h,
                  right: 5.h,
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableText(
                        text: "Edit",
                        style: appstyle(
                            16, Color(kOrange.value), FontWeight.w500)),
                  ),
                )
              ],
            ),
            const HeightSpacer(size: 20),
            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: heiGht * 0.06,
              color: Color(kLightGrey.value),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                    text: "abc@gmail.com",
                    style: appstyle(16, Color(kDark.value), FontWeight.w600)),
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: heiGht * 0.06,
              color: Color(kLightGrey.value),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/usa.svg",
                      width: 20.w,
                      height: 20.h,
                    ),
                    const WidthSpacer(size: 15),
                    ReusableText(
                        text: "+123456789034",
                        style:
                            appstyle(16, Color(kDark.value), FontWeight.w600)),
                  ],
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              color: Color(kLightGrey.value),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.h),
                    child: ReusableText(
                        text: "Skills",
                        style:
                            appstyle(16, Color(kDark.value), FontWeight.w600)),
                  ),
                  const HeightSpacer(size: 3),
                  SizedBox(
                    height: heiGht * 0.5,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8.0),
                        child: ListView.builder(
                            itemCount: skills.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final skill = skills[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  width: width,
                                  height: heiGht * 0.06,
                                  color: Color(kLight.value),
                                  child: ReusableText(
                                      text: skill,
                                      style: appstyle(16, Color(kDark.value),
                                          FontWeight.normal)),
                                ),
                              );
                            })),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
