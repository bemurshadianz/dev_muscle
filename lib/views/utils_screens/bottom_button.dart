import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final VoidCallback? onTap;

  const BottomButton({this.title = '', this.buttonColor = AppColors.yellow, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
              const Icon(Icons.play_arrow),
            ],
          ),
        ),
      ),
    );
  }
}

class GoBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color buttonColor;
  const GoBackButton({Key? key, required this.onTap, this.buttonColor = AppColors.lightGrey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          shape: BoxShape.circle,
        ),
        child: const Padding(
          padding: EdgeInsets.all(11),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_back),
            ],
          ),
        ),
      ),
    );
  }
}

class AppbarBackButton extends StatelessWidget {
  const AppbarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
