import 'package:appointment/core/helpers/spacing.dart';
import 'package:appointment/features/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import '../doctors_list/doctors_shimmer_loading.dart';
import 'speciality_listview.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationDataList) {
            var specializationsList = specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  /// Shimmer Speciality And Doctors
  Widget setupLoading() {
    return Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading()
      ],
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
