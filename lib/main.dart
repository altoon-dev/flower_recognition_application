import 'package:flower_recognition_application/data/presentation/dashboard/dashboard.dart';
import 'package:flower_recognition_application/data/presentation/sign_in/sign_in.dart';
import 'package:flower_recognition_application/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'bloc/auth_bloc.dart';
import 'widgets/global_key.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';


Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) =>
            AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
        child: MaterialApp(
          home: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                // If the snapshot has user data, then they're already signed in. So Navigating to the Dashboard.
                if (snapshot.hasData) {
                  return const Dashboard();
                }
                // Otherwise, they're not signed in. Show the sign in page.
                return SignIn();
              }),
        ),
      ),
    );
  }
}
