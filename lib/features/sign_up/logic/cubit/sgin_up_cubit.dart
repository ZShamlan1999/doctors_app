import '../../data/models/sign_up_request_body.dart';
import '../../data/repo/sign_up_repo.dart';
import 'sgin_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SginUpCubit extends Cubit<SginUpState> {
  final SignUpRepo _signUpRepo;
  SginUpCubit(this._signUpRepo) : super(const SginUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  
  void emitSignupStates() async {
    emit(const SginUpState.loading());
    final response = await _signUpRepo.signup(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) {
      emit(SginUpState.success(signupResponse));
    }, failure: (error) {
       emit(SginUpState.error(error: error.apiErrorModel.message ?? ''));
    },);
  }
}
