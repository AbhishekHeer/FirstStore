import 'package:firestore/src/commons/view/loginpage.dart';
import 'package:firestore/src/commons/view/splashscreen.dart';
import 'package:firestore/src/commons/view/signuppage.dart';
import 'package:firestore/src/commons/view/signupsecond.dart';
import 'package:firestore/src/feature/Reconciliation/view/mt_ai.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/account_balance.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/entity_details.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/entity_details_2.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/entity_type.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/invoice_details.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/transaction_add.dart';
import 'package:firestore/src/feature/Reconciliation/view/multi_way/transaction_details.dart';
import 'package:firestore/src/feature/Reconciliation/view/reconciliation_main.dart';
import 'package:firestore/src/feature/Reconciliation/view/user_case.dart';
import 'package:firestore/src/feature/home/view/Home/homepage.dart';
import 'package:firestore/src/feature/contact/contactus.dart';
import 'package:firestore/src/feature/contact/talktous.dart';
import 'package:firestore/src/feature/payments/view/paymentpage.dart';
import 'package:firestore/src/models/cardmodel.dart';
import 'package:go_router/go_router.dart';

abstract class Gorouter {
  static GoRouter router = GoRouter(
    initialLocation: '/transaction_add',
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
        name: '/',
        path: '/',
        builder: (context, state) => const Splashscreen(),
      ),
      GoRoute(
        name: '/login',
        path: '/login',
        builder: (context, state) => const Loginpage(),
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
          builder: (context, GoRouterState state) {
            final Cardmodel cardmodel = state.extra as Cardmodel;
            return Paymentpage(
              cardmodel: cardmodel,
            );
          }),
      GoRoute(
          name: '/recomain',
          path: '/recomain',
          builder: (context, GoRouterState state) {
            return const ReconciliationMain();
          }),
      GoRoute(
          name: '/usercase',
          path: '/usercase',
          builder: (context, GoRouterState state) {
            return const UserCase();
          }),
      GoRoute(
          name: '/mt_ai',
          path: '/mt_ai',
          builder: (context, GoRouterState state) {
            return const MtAi();
          }),
      GoRoute(
          name: '/transaction_details',
          path: '/transaction_details',
          builder: (context, GoRouterState state) {
            return const TransactionDetails();
          }),
      GoRoute(
          name: '/entity_type',
          path: '/entity_type',
          builder: (context, GoRouterState state) {
            return const EntityType();
          }),
      GoRoute(
          name: '/entity_details',
          path: '/entity_details',
          builder: (context, GoRouterState state) {
            return const EntityDetails();
          }),
      GoRoute(
          name: '/entity_details2',
          path: '/entity_details2',
          builder: (context, GoRouterState state) {
            return const EntityDetails2();
          }),
      GoRoute(
          name: '/invoice_details',
          path: '/invoice_details',
          builder: (context, GoRouterState state) {
            return const InvoiceDetails();
          }),
      GoRoute(
          name: '/account_balance',
          path: '/account_balance',
          builder: (context, GoRouterState state) {
            return const AccountBalance();
          }),
      GoRoute(
          name: '/transaction_add',
          path: '/transaction_add',
          builder: (context, GoRouterState state) {
            return const TransactionAdd();
          }),
    ],
  );
}
