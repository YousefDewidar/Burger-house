import 'package:burger_house/core/utils/widgets/widget_with_background.dart';
import 'package:burger_house/features/auth/presentation/view/widgets/forget_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WidgetWithBackground(widget: ForgetViewBody(),havBack: true,),
    );
  }
}
