import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_zone/Features/Workout%20Screen/Model.dart';

import '../../Core/Costum Widgets/Common SizedBox/costum_widgets.dart';
import '../../Core/Costum_Color/App Colors/app_colors.dart';

class FullBodyWorkout extends StatelessWidget {
  const FullBodyWorkout({
    Key? key,
    required this.appcolors,
  }) : super(key: key);

  final Appcolors appcolors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Row(
            children: [
              Text(
                "Full Body Workout",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  color: appcolors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          fixheight,
          fixheight3,
          Container(
            width: double.infinity,
            height: 200.h,
            margin: EdgeInsets.only(top: 50),
            child: ListView.builder(
                itemCount: fullbody.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(fullbody[index].pagename);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          Container(
                            height: 160.h,
                            width: 135.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  fullbody[index].imagUrl,
                                ),
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          fixheight3,
                          Text(
                            fullbody[index].name,
                            style: TextStyle(
                              color: appcolors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
