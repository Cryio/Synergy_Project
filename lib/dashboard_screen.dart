import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'history_table.dart';
import 'size_config.dart';
import 'style.dart';
import 'components.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "./dashboard";
  const DashboardScreen({Key? key}) : super(key: key);

  void _logoutTapped(BuildContext context) {
    print("Logging out user");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage(title: 'LoginPage')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    SizeConfig().init(context);

    return Scaffold(
      key: drawerKey,
      drawer: const SideMenu(),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.purpleAccent,
          ),
        ),
        actions: const [AppBarActionItem()],
      ),
      body: SafeArea(
        child: Row(
          children: [
            // const Expanded(
            //   flex: 1,
            //   child: SideMenu(),
            // ),
            Expanded(
              flex: 10,
              child: SizedBox(
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DashboardHeader(),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(
                              icon: 'assets/card.svg',
                              label: 'Unlocked via\nNFC',
                              lastused: 'Today',
                            ),
                            InfoCard(
                              icon: 'assets/transfer.svg',
                              label: 'Unlocked via\nPhone',
                              lastused: 'Today',
                            ),
                            InfoCard(
                              icon: 'assets/verify.svg',
                              label: 'Unlocked via\nFingerPrint',
                              lastused: 'Yesterday',
                            ),
                            InfoCard(
                              icon: 'assets/verify.svg',
                              label: 'Unlocked via\nOther Method',
                              lastused: 'Today',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'History',
                            size: 30.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          PrimaryText(
                            text: 'Today',
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const HistoryTable(),
                      const DetailList(),

                      // Login column button
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(),
                          ElevatedButton(
                            onPressed: () => _logoutTapped(context),
                            child: const Text("Logout"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
