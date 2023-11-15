import 'package:dev_muscle/home_screen/fitness_instructor.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network("https://media.istockphoto.com/id/868086338/photo/muscular-man-working-out"
                  "-in-gym-doing-exercises-strong-male-with-dumbbells.jpg?s=170667a&w"
                  "=0&k=20&c=fj6Z-Ep3Ct-789e4TlPqxIfgvnkDgP-Y59URJJugm2I="),
              Positioned(
                top: 150,
                left: 32,
                child: Text(
                  "BE PREMIUM",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Positioned(
                top: 200,
                left: 32,
                child: Text(
                  "GET UNLIMITED \n ACCESS",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Positioned(
                bottom: 100,
                left: 32,
                child: Text(
                  "When you subscribe,you'll get \n instant unlimited access",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              height: 74,
              width: 311,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.red.shade300),
              child: ListTile(
                leading: Icon(Icons.radio_button_checked),
                title: Text(
                  "Monthly",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  "19.99",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Pay monthly,cancel anytime",
                  style: TextStyle(color: Color(0xffF2424), fontSize: 11, fontWeight: FontWeight.w400),
                ),
                selectedColor: Color(0xffFF2424),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 74,
            width: 311,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff2C2C2E),
            ),
            child: ListTile(
              leading: Icon(Icons.radio_button_checked),
              title: Text(
                "Yearly",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                "129.99",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Pay for a full year",
                style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Expanded(
                child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return FitnessInstructor();
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
                          "Subscribe Now ",
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
