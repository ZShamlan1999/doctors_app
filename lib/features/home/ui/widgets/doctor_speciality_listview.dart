import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/moduls/specializations_response_model.dart';
import 'doctor_speciality_listview_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsDataList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            specializationsData: specializationsDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
