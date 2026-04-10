import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/exceptions.dart'; // سأوضح لك محتواه بالأسفل

class FirebaseAuthService {
  Future<User> createAccountWithEmailAndPass({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('كلمة السر ضعيفة جدا ');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('البريد الإلكتروني مستخدم بالفعل');
      }
      throw CustomException('حدث خطأ ما . يرجى إعادة المحاولة لاحقًا');
    } catch (e) {
      throw CustomException('حدث خطأ ما . يرجى إعادة المحاولة ');
    }
  }
}
