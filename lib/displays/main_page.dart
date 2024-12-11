import 'package:flutter/material.dart';
import 'package:learning_flutter_4cs1/components/drawer.dart';
import 'package:learning_flutter_4cs1/displays/detailpage.dart';
import 'package:learning_flutter_4cs1/displays/homepage.dart';
import 'package:learning_flutter_4cs1/displays/login_page.dart';
import 'package:learning_flutter_4cs1/displays/servicepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  Widget menuPopup() {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Settings',
          child: ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              showSetting();
            },
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'item2',
          child: ListTile(
            leading: const Icon(Icons.copy),
            title: const Text('Copy'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        PopupMenuItem<String>(
          value: 'item3',
          child: ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'item4',
          child: ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Delete'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  void showSetting() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                showSettingContent(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Save Changes'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Column showSettingContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Display Name",
                  hintText: "Enter your display name",
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Email Address",
                  hintText: "Enter your email",
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  final List<String> items = [
    'data management',
    'sale',
    'order',
    'import',
    'export',
    'search',
    'report'
  ];

  final List<IconData> tabIcons = [
    Icons.data_usage,
    Icons.point_of_sale,
    Icons.shopping_cart,
    Icons.download,
    Icons.upload,
    Icons.search,
    Icons.bar_chart,
  ];

  final List<Color> iconColors = [
    Colors.amber,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.indigo,
  ];

  final List<double> iconSizes = List.filled(7, 24.0);

  PreferredSizeWidget tabBarMenu() {
    return TabBar(
      isScrollable: true,
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      tabs: List.generate(
        tabIcons.length,
        (index) => Tab(
          icon: Icon(
            tabIcons[index],
            color: iconColors[index],
            size: iconSizes[index],
          ),
          text: items[index].toUpperCase(),
        ),
      ),
    );
  }

  final List<Widget> _pages = [
    const HomePage(),
    const LoginPage(),
    const DetailPage(),
    const ServicePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: items.length,
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          bottom: tabBarMenu(),
          actions: [menuPopup()],
          backgroundColor: Colors.blue,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: const Text('4CS1'),
        ),
        body: TabBarView(
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: 'Detail',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.miscellaneous_services),
              label: 'Service',
            ),
          ],
        ),
      ),
    );
  }
}
