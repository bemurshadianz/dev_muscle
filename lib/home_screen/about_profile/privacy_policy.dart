import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  "PRIVACY POLICY",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
                ),
                Text(
                  "\n "
                  "Consectetur adipiscing elit. Natoque\n"
                  "phasellus lobortis mattis cursus faucibus\n"
                  "hac proin risus. Turpis phasellus massa\n"
                  "ullamcorper volutpat. Ornare commodo non\n"
                  "integer fermentum nisi, morbi id. Vel tortor\n"
                  "mauris feugiat amet, maecenas facilisis\n"
                  "risus, in faucibus. Vestibulum ullamcorper\n"
                  "fames eget enim diam fames faucibus duis\n"
                  "ac. Aliquam non tellus semper in dignissim\n"
                  "nascetur venenatis lacus.\n"
                  "\n"
                  "Lectus vel non varius interdum vel tellus\n"
                  "sed mattis. Sit laoreet auctor arcu mauris\n"
                  "tincidunt sociis tristique pharetra neque.\n"
                  "Aliquam pharetra elementum nisl sapien. Erat \n"
                  "nisl morbi eu dolor in. Sapien ut lacus dui\n"
                  "libero morbi tristique.\n"
                  "\n"
                  "Sit praesent mi,"
                  "dolor, magna in pellentesque sollicitudin"
                  "odio sed. Sit nibh aliquam enim ipsum\n"
                  "lectus sem fermentum congue velit.\n"
                  "Purus habitant odio in morbi aliquet\n"
                  "velit pulvinar. Facilisis ut amet interdum\n"
                  "pretium. Fames pretium eget orci facilisis\n"
                  "mattis est libero facilisis ullamcorper.\n"
                  "Est auctor amet egestas risus libero et.\n"
                  "Auctor faucibus sit id fringilla vitae.\n"
                  "Ac volutpat sodales tristique ut netus turpis.\n"
                  "\n"
                  "\n"
                  "Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    color: Color(0xffB5B5B5),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
