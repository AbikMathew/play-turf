import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/login/views/sign_in_view.dart';
import 'package:sizer/sizer.dart';

import '../../constants/ui.dart';
import '../../widgets/custom_buttons.dart';

class EditProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 150,
                width: 300,
                child: Image.asset('asset/images/login/login.png'),
              ),
            ),
            kHeight20,
            const CustomTextField(
                labelText: 'Name',
                hintText: 'Abik Mathew George',
                icon: Icons.person),
            const CustomTextField(
                labelText: 'Phone no',
                hintText: '8111903422',
                icon: Icons.phone),
            const CustomTextField(
                labelText: 'Address',
                hintText: 'Casilda, Kalathipady, Kottayam',
                icon: Icons.house),
            kHeight20,
            kHeight20,
            kHeight20,
            GreenButton(
              text: 'Submit',
              onPressed: () {},
              width: 90.w,
            ),
          ],
        ),
      ),
    );
  }
}
