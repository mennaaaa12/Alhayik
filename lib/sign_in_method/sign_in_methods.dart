import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInMethods {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Google Sign-In Method
  static Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        log('Google Sign-In aborted.');
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      await _saveUserDataToFirestore(userCredential.user!);
      log('Google user signed in: ${userCredential.user!.email}');
    } catch (e) {
      log('Error during Google Sign-In: $e');
    }
  }

  // Facebook Sign-In Method
  static Future<void> signUpWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      if (loginResult.status != LoginStatus.success) {
        log('Facebook login failed: ${loginResult.message}');
        return;
      }

      final OAuthCredential credential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final userData = await FacebookAuth.instance.getUserData();
      await _saveUserDataToFirestore(
        userCredential.user!,
        name: userData['name'],
        email: userData['email'] ?? 'no-email@facebook.com',
        profileImage: userData['picture']['data']['url'],
      );
      log('Facebook user signed in: ${userData['name']}');
    } catch (e) {
      log('Error during Facebook sign-up: $e');
    }
  }

  // Save User Data to Firestore
  static Future<void> _saveUserDataToFirestore(
    User user, {
    String? name,
    String? email,
    String? profileImage,
  }) async {
    final usersCollection = FirebaseFirestore.instance.collection('users');
    await usersCollection.doc(user.uid).set({
      'uid': user.uid,
      'name': name ?? user.displayName,
      'email': email ?? user.email,
      'profileImage': profileImage ?? user.photoURL,
      'createdAt': DateTime.now().toIso8601String(),
    });
    log('User data saved to Firestore.');
  }
}
