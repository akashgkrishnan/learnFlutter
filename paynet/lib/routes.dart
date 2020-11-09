import './screens/welcome/welcome_screen.dart';
import './screens/signin/sign_in_screen.dart';
import './screens/signup/sign_up_screen.dart';
import './screens/homescreen/home_screen.dart';
import './screens/acountinfo/acount_info_screen.dart';
import './screens/balance/balance_screen.dart';
import './screens/history/history_screen.dart';
import './screens/sendmoney/send_money_screen.dart';

// Map<String, StatelessWidget Function(dynamic)>
var routes = {
  '/': (context) => WelcomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  AcountInfoScreen.routeName: (context) => AcountInfoScreen(),
  SendMoneyScreen.routeName: (context) => SendMoneyScreen(),
  HistoryScreen.routeName: (context) => HistoryScreen(),
  BalanceScreen.routeName: (context) => BalanceScreen(),
};
