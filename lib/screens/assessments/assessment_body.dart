import 'package:flutter/material.dart';
import '../../models/planets.dart';
import 'assessment_summary.dart';

class AssessmentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => AssessmentSummary(planets[index]),
                  childCount: planets.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
