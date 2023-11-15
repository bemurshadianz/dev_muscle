import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:dev_muscle/home_screen/payment.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  List<DateTime> eachDateTime = [];
  DateTimeRange? rangeDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Row(
              children: [
                GestureDetector(
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
                  "APPOINTMENT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 96,
            width: 327,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color(0xff2C2C2E),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.network(
                        "https://files.oyebesmartest.com/uploads/large/11593502795osu.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Richard will",
                            style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 16,
                            width: 33,
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent,
                            ),
                            child: Center(
                              child: Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "High Intensity Training",
                            style: TextStyle(color: AppColors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "5 years experience",
                        style: TextStyle(color: AppColors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    var result = await showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: CustomCalenderPicker(
                          returnDateType: ReturnDateType.list,
                          initialDateList: eachDateTime,
                          calenderThema: CalenderThema.dark,
                        ),
                      ),
                    );
                    if (result != null) {
                      if (result is List<DateTime>) {
                        setState(() {
                          eachDateTime.clear();
                          eachDateTime.addAll(result);
                        });
                      }
                    }
                  },
                  child: const Text('Dialog Example'),
                ),
                ...List.generate(
                  eachDateTime.length,
                  (index) => Text(
                    eachDateTime[index].toString().substring(0, 10),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    var result = await showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                          bottom: Radius.zero,
                        ),
                      ),
                      context: context,
                      builder: (context) => CustomCalenderPicker(
                        returnDateType: ReturnDateType.range,
                        initialDateRange: rangeDateTime,
                        calenderThema: CalenderThema.dark,
                        rangeColor: Colors.grey.withOpacity(.3),
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                          bottom: Radius.zero,
                        ),
                      ),
                    );
                    if (result != null) {
                      if (result is DateTimeRange) {
                        setState(() {
                          rangeDateTime = result;
                        });
                      }
                    }
                  },
                  child: const Text('Bottom Sheet Example'),
                ),
                Text(rangeDateTime == null
                    ? ''
                    : '${rangeDateTime!.start.toString().substring(0, 10)} ~ ${rangeDateTime!.end.toString().substring(0, 10)}')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Expanded(
                child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return Payment();
                  }));
                },
                child: Container(
                  height: 50,
                  width: 247,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffD0FD3E),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
