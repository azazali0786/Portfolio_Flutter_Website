import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysite/app/utils/tech_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

class TechStack extends StatelessWidget {
  const TechStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobileOrTablet = screenWidth < 1024; // Adjusting for mobile and tablet

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: isMobileOrTablet
              ? const EdgeInsets.only(left: 25) // Same padding for mobile & tablet
              : EdgeInsets.zero, // No extra padding for desktop
          child: Text(
            "Essential Tools & Frameworks I use",
            style: isMobileOrTablet? const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            ):const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w400,
            )
          ),
        ),
        const CustomSectionSubHeading(
          text:
              'Discover the powerful tools and technologies I use to create exceptional, high-performing websites & applications.',
        ),
        SizedBox(height: 1.w),
        isMobileOrTablet
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: TechUtils.techIcons
                        .map(
                          (icon) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: SvgPicture.network(icon,height: 50,width: 50,),
                          ),
                        )
                        .toList(),
                  ),
                ),
              )
            : Wrap(
                alignment: WrapAlignment.center,
                spacing: 2.w,
                children: TechUtils.techIcons
                    .map(
                      (icon) => SvgPicture.network(icon,height: 50,width: 50,),
                    )
                    .toList(),
              ),
       
        SizedBox(height: 1.w),
        isMobileOrTablet
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: TechUtils.techLgIcons
                        .map(
                          (icon) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: SvgPicture.network(icon,height: 50,width: 50,),
                          ),
                        )
                        .toList(),
                  ),
                ),
              )
            : Wrap(
                alignment: WrapAlignment.center,
                spacing: 2.w,
                children: TechUtils.techLgIcons
                    .map(
                      (icon) => SvgPicture.network(icon,height: 50,width: 50,),
                    )
                    .toList(),
              ),
      ],
    );
  }
}
