import 'package:freezed_annotation/freezed_annotation.dart';
part 'sgin_up_state.freezed.dart';

@freezed
class SginUpState<T> with _$SginUpState<T> {
  const factory SginUpState.initial() = _Initial;
    const factory SginUpState.loading() = Loading;
  const factory SginUpState.success(T data) = Success<T>;
  const factory SginUpState.error({required String error}) = Error;
}
