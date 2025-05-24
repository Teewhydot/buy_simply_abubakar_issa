import 'package:flutter/material.dart';

import '../widgets/custom_nav_bar.dart';

class FeInterviewTask extends StatelessWidget {
  const FeInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomNavBar());
  }
}
