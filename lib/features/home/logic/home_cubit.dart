import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/networking/api_error_handler.dart';
import 'package:appointment/features/home/data/repostoey/home_repo.dart';
import 'package:appointment/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/moduls/specializations_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by id defualt.
        getDoctorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationsList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors> doctorsList =
        getDoctorsListSpecializationById(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  /// returns the list of doctors based on the  Specialization id
  getDoctorsListSpecializationById(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
