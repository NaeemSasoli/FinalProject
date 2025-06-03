import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/backend/user_model.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Rxn<UserModel> user = Rxn<UserModel>();

   // Add sign-up method
  Future<void> signUp(String email, String password, String name) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // Update user display name
      await userCredential.user?.updateDisplayName(name);
      
      user.value = UserModel(
        uid: userCredential.user!.uid,
        email: email,
        name: name,
      );
      
      Get.offAllNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Sign Up Failed", e.message ?? 'Unknown error');
      rethrow;
    }
  }

  @override
  void onInit() {
    _auth.authStateChanges().listen(_onAuthStateChanged);
    super.onInit();
  }

  void _onAuthStateChanged(User? firebaseUser) {
    if (firebaseUser != null) {
      user.value = UserModel(
        uid: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        name: firebaseUser.displayName ?? firebaseUser.email!.split('@')[0],
      );
    } else {
      user.value = null;
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Login Failed", e.message ?? 'Unknown error');
      rethrow;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}