import 'package:firestore/src/commons/view/splashscreen.dart';
import 'package:firestore/src/commons/view/signuppage.dart';
import 'package:firestore/src/commons/view/signupsecond.dart';
import 'package:firestore/src/feature/home/view/Home/homepage.dart';
import 'package:firestore/src/feature/home/view/contact/contactus.dart';
import 'package:firestore/src/feature/home/view/contact/talktous.dart';
import 'package:firestore/src/feature/home/view/payments/paymentpage.dart';
import 'package:go_router/go_router.dart';

abstract class Gorouter {
  static GoRouter router = GoRouter(
    initialLocation: '/paymentpage',
    routes: [
      GoRoute(
        name: '/home',
        path: '/home',
        builder: (context, state) => const Homepage(),
      ),
      GoRoute(
        name: '/signup',
        path: '/signup',
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        name: '/spashscreen',
        path: '/splashscreen',
        builder: (context, state) => const Splashscreen(),
      ),
      GoRoute(
        name: '/signupsecond',
        path: '/signupsecond',
        builder: (context, state) => const Signupsecond(),
      ),
      GoRoute(
        name: '/contactus',
        path: '/contactus',
        builder: (context, state) => const Contactus(),
      ),
      GoRoute(
        name: '/talktous',
        path: '/talktous',
        builder: (context, state) => const Talktous(),
      ),
      GoRoute(
        name: '/paymentpage',
        path: '/paymentpage',
        builder: (context, state) => const Paymentpage(),
      ),
    ],
  );
}
