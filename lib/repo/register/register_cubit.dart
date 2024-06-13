import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:makan_yuk/repo/auth_repo.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  final _repo = AuthRepo();
  Future<void> register(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      await _repo.register(email: email, password: password);
      emit(RegisterSuccess('Berhasil!'));
    } catch (e) {
      print(e);
      emit(RegisterFailure(e.toString()));
    }
  }
}
