import 'package:appointment/core/networking/api_error_handler.dart';
import 'package:appointment/features/home/data/moduls/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(SpecializationsResponseModel specializationsResponseModel) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;
}
