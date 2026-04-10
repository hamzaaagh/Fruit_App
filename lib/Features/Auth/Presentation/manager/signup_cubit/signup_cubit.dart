import 'package:bloc/bloc.dart';
import 'package:fruit_app/Features/Auth/domain/entities/user_entity.dart';
import 'package:fruit_app/Features/Auth/domain/repos/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPass({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignupLoading());
    var result = await authRepo.createAccountWithEmailAndPass(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (user) => emit(SignupSuccess(user: user)),
    );
  }
}
