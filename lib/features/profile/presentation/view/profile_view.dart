import 'package:burger_house/features/home/presentation/view/widget/hello_row.dart';
import 'package:burger_house/features/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          HelloRow(),
          ProfileViewBody(),
        ],
      ),
    );
  }
}
