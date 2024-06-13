import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spinwheel/core/ui/components/widget_m.dart';

import '../../../core/ui/components/point_bottomsheet.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0C1B3A),
        body: _buildBody(context),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          WidgetMedium(onTap: () => openModal(context), bigText: "VERDE", bigTextColor: Colors.green, smallText: "30"),
          SizedBox(height: 16),
          WidgetMedium(onTap: () => openModal(context), bigText: "VERMELHO", bigTextColor: Colors.red, smallText: "20"),
          SizedBox(height: 16),
          WidgetMedium(onTap: () => openModal(context), bigText: "AMARELO", bigTextColor: Colors.yellow, smallText: "10"),
        ],
      ),
    );
  }

  Future<dynamic> openModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) => SyncModal(
        onFirst: () => oi(),
        onSecond: () => oi(),
        onThird: () => oi(),
      ),
    );
  }

  oi() {}
}
