import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/constants.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: Svg('assets/svg/icon-burger.svg', size: Size(24, 24)),
          )),
        ),
        const SizedBox(
          width: 36,
          height: 36,
          child: CircleAvatar(
            backgroundColor: kBlueColor,
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/C5603AQGRQRM6XaoJEg/profile-displayphoto-shrink_800_800/0/1622697307130?e=2147483647&v=beta&t=2BYKn90sbAGxdFE45M0qhrsZWiI166d84R06Q3Vo5NY'),
          ),
        )
      ],
    );
  }
}
