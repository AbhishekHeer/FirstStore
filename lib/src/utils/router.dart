import 'package:firststore/src/app.dart';
import 'package:firststore/src/feature/Multi%20Ways/view/multi_way/entity_type.dart';
import 'package:firststore/src/feature/Multi%20Ways/view/multi_way/transaction_details.dart';
import 'package:firststore/src/feature/Purchase%20Ledger/view/purchase_information.dart';
import 'package:firststore/src/feature/Purchase%20Ledger/view/supplier_info.dart';
import 'package:firststore/src/feature/login/view/loginpage.dart';
import 'package:firststore/src/commons/view/splashscreen.dart';
import 'package:firststore/src/commons/view/signuppage.dart';
import 'package:firststore/src/commons/view/signupsecond.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/batch_account_balance.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/batch_add_transaction.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/batch_details.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/invoice_details.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/business_entity_details.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/individual_entity_details.dart';
import 'package:firststore/src/feature/Batch%20Payments/view/batch_transection_details.dart';
import 'package:firststore/src/feature/Cash%20Ledger/view/widgets/customer_details_cash_ledger.dart';
import 'package:firststore/src/feature/Cash%20Ledger/view/widgets/transaction_details_cash_ledger.dart';
import 'package:firststore/src/feature/General%20Ledger/view/account_detail_ledger.dart';
import 'package:firststore/src/feature/General%20Ledger/view/basic_info_ledger.dart';
import 'package:firststore/src/feature/General%20Ledger/view/first_ledger.dart';
import 'package:firststore/src/feature/General%20Ledger/view/general_ledger_home.dart';
import 'package:firststore/src/feature/General%20Ledger/view/transaction_details_ledger.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_add_transaction.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_balance.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_business.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_entity_type.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_individual.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_invoice.dart';
import 'package:firststore/src/feature/Intercompany%20Reconciliation/view/intercompany_transaction_details.dart';
import 'package:firststore/src/feature/Reconciliation/view/mt_ai.dart';
import 'package:firststore/src/feature/Reconciliation/view/reconciliation_main.dart';
import 'package:firststore/src/feature/Reconciliation/view/user_case.dart';
import 'package:firststore/src/feature/home/view/Home/homepage.dart';
import 'package:firststore/src/feature/contact/view/contactus.dart';
import 'package:firststore/src/feature/contact/view/talktous.dart';
import 'package:firststore/src/feature/payments/view/paymentpage.dart';
import 'package:firststore/src/feature/sales%20Legger/view/widgets/customer_info_sales.dart';
import 'package:firststore/src/feature/sales%20Legger/view/widgets/sales_info_ledger.dart';
import 'package:firststore/src/models/cardmodel.dart';
import 'package:go_router/go_router.dart';
import '../feature/Multi Ways/view/multi_way/account_balance.dart';
import '../feature/Multi Ways/view/multi_way/entity_details.dart';
import '../feature/Multi Ways/view/multi_way/entity_details_2.dart';
import '../feature/Multi Ways/view/multi_way/invoice_details.dart';
import '../feature/Multi Ways/view/multi_way/transaction_add.dart';

abstract class Gorouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: '/',
        path: '/',
        builder: (context, state) => const Splashscreen(),
      ),
      GoRoute(
        name: '/app',
        path: '/app',
        builder: (context, state) => const App(),
      ),
      //auth
      GoRoute(
        name: '/signup',
        path: '/signup',
        builder: (context, state) => const SignupPage(),
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

      //contact us
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
      //home
      GoRoute(
        name: '/home',
        path: '/home',
        builder: (context, state) => const Homepage(),
      ),

      //Payments
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
      //Reconciliation

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
      //batch payment

      GoRoute(
          name: '/batch_details',
          path: '/batch_details',
          builder: (context, GoRouterState state) {
            return const BatchDetails();
          }),
      GoRoute(
          name: '/batch_transaction',
          path: '/batch_transaction',
          builder: (context, GoRouterState state) {
            return const BatchTransectionDetails();
          }),
      GoRoute(
          name: '/indivitual_entity_details',
          path: '/indivitual_entity_details',
          builder: (context, GoRouterState state) {
            return const IndividualEntityDetails();
          }),
      GoRoute(
          name: '/business_entity_details',
          path: '/business_entity_details',
          builder: (context, GoRouterState state) {
            return const BusinessEntityDetails();
          }),
      GoRoute(
          name: '/batch_invoice_details',
          path: '/batch_invoice_details',
          builder: (context, GoRouterState state) {
            return const Batch_Invoice_Details();
          }),
      GoRoute(
          name: '/batch_account_balance',
          path: '/batch_account_balance',
          builder: (context, GoRouterState state) {
            return const BatchAccountBalance();
          }),
      GoRoute(
          name: '/batch_add_transaction',
          path: '/batch_add_transaction',
          builder: (context, GoRouterState state) {
            return const BatchAddTransaction();
          }),

      //Intercompany Reconciliation
      GoRoute(
          name: '/intercompany_transaction_details',
          path: '/intercompany_transaction_details',
          builder: (context, GoRouterState state) {
            return const IntercompanyTransactionDetails();
          }),
      GoRoute(
          name: '/intercompany_entity_details',
          path: '/intercompany_entity_details',
          builder: (context, GoRouterState state) {
            return const IntercompanyEntityType();
          }),
      GoRoute(
          name: '/intercompany_individual',
          path: '/intercompany_individual',
          builder: (context, GoRouterState state) {
            return const IntercompanyIndividual();
          }),
      GoRoute(
          name: '/intercompany_business',
          path: '/intercompany_business',
          builder: (context, GoRouterState state) {
            return const IntercompanyBusiness();
          }),
      GoRoute(
          name: '/intercompany_invoice',
          path: '/intercompany_invoice',
          builder: (context, GoRouterState state) {
            return const IntercompanyInvoice();
          }),
      GoRoute(
          name: '/intercompany_balance',
          path: '/intercompany_balance',
          builder: (context, GoRouterState state) {
            return const IntercompanyBalance();
          }),
      GoRoute(
          name: '/intercompany_add_transaction',
          path: '/intercompany_add_transaction',
          builder: (context, GoRouterState state) {
            return const IntercompanyAddTransaction();
          }),

      //General Ledger
      GoRoute(
          name: '/Ledgers_home',
          path: '/Ledgers_home',
          builder: (context, GoRouterState state) {
            return const GeneralLedgerHome();
          }),
      GoRoute(
          name: '/first_ledger',
          path: '/first_ledger',
          builder: (context, GoRouterState state) {
            return const FirstLedger();
          }),
      GoRoute(
          name: '/basic_info_ledger',
          path: '/basic_info_ledger',
          builder: (context, GoRouterState state) {
            return const BasicInfoLedger();
          }),
      GoRoute(
          name: '/account_details_ledger',
          path: '/account_details_ledger',
          builder: (context, GoRouterState state) {
            return const AccountDetailLedger();
          }),
      GoRoute(
          name: '/transaction_ledger',
          path: '/transaction_ledger',
          builder: (context, GoRouterState state) {
            return const TransactionDetailsLedger();
          }),
      //sales ledger
      GoRoute(
          name: '/customer_info_sales',
          path: '/customer_info_sales',
          builder: (context, GoRouterState state) {
            return const CustomerInfoSales();
          }),
      GoRoute(
          name: '/sales_info_ledger',
          path: '/sales_info_ledger',
          builder: (context, GoRouterState state) {
            return const SalesInfoLedger();
          }),
      //cash Ledger
      GoRoute(
          name: '/transaction_cash_ledger',
          path: '/transaction_cash_ledger',
          builder: (context, GoRouterState state) {
            return const TransactionDetailsCashLedger();
          }),
      GoRoute(
          name: '/customer_details_cash_ledger',
          path: '/customer_details_cash_ledger',
          builder: (context, GoRouterState state) {
            return const CustomerDetailsCashLedger();
          }),
      //Purchase
      GoRoute(
          name: '/purchase_info',
          path: '/purchare_info',
          builder: (context, GoRouterState state) {
            return const PurchaseInformation();
          }),
      GoRoute(
          name: '/supplier_info',
          path: '/supplier_info',
          builder: (context, GoRouterState state) {
            return const SupplierInfo();
          }),
    ],
    initialLocation: '/Ledgers_home',
  );
}
