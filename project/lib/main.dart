import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String currentView = "login";

  List<Map<String, dynamic>> buses = [
    {
      'id': 1,
      'number': 'DIU-01',
      'route': 'Dhanmondi - DIU Main Campus',
      'status': 'On Time',
      'driver': 'Md. Rahman',
      'capacity': '45/50'
    },
    {
      'id': 2,
      'number': 'DIU-02',
      'route': 'Gulshan - DIU Permanent Campus',
      'status': 'Delayed',
      'driver': 'Abdul Karim',
      'capacity': '32/50'
    },
    {
      'id': 3,
      'number': 'DIU-03',
      'route': 'Mohakhali - DIU Main Campus',
      'status': 'On Time',
      'driver': 'Sana Akter',
      'capacity': '28/50'
    },
    {
      'id': 4,
      'number': 'DIU-04',
      'route': 'Uttara - DIU Permanent Campus',
      'status': 'On Time',
      'driver': 'Rafiqul Islam',
      'capacity': '41/50'
    },
  ];

  List<Map<String, dynamic>> routes = [
    {'id': 1, 'name': 'Dhanmondi Route', 'buses': 2, 'active': true},
    {'id': 2, 'name': 'Gulshan Route', 'buses': 1, 'active': true},
    {'id': 3, 'name': 'Mohakhali Route', 'buses': 1, 'active': true},
    {'id': 4, 'name': 'Uttara Route', 'buses': 1, 'active': false},
  ];

  @override
  Widget build(BuildContext context) {
    return currentView == "login" ? loginScreen() : mainLayout();
  }

  // -------------------------- LOGIN SCREEN --------------------------
  Widget loginScreen() {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.redAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.directions_bus,
                      color: Colors.white, size: 40),
                ),
                const SizedBox(height: 20),
                const Text("DIU Bus Management",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email))),
                const SizedBox(height: 16),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock))),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => setState(() => currentView = "dashboard"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size.fromHeight(45)),
                  child: const Text("Sign In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // -------------------------- MAIN LAYOUT --------------------------
  Widget mainLayout() {
    return Scaffold(
      drawer: sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        title: Text(currentView.toUpperCase()),
      ),
      body: renderView(),
    );
  }

  Widget sidebar() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: Text("DIU Bus Mgmt",
                style: TextStyle(color: Colors.white, fontSize: 22)),
          ),
          navItem("Dashboard", "dashboard"),
          navItem("Bus Management", "buses"),
          navItem("Routes", "routes"),
        ],
      ),
    );
  }

  Widget navItem(String label, String view) {
    return ListTile(
      title: Text(label),
      selected: currentView == view,
      onTap: () => setState(() => currentView = view),
    );
  }

  // -------------------------- VIEW CONTROLLER --------------------------
  Widget renderView() {
    switch (currentView) {
      case "dashboard":
        return dashboardView();
      case "buses":
        return busManagementView();
      case "routes":
        return routesView();
      default:
        return dashboardView();
    }
  }

  // -------------------------- DASHBOARD --------------------------
  Widget dashboardView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        statCard("Total Buses", "12", Icons.directions_bus, Colors.red),
        const SizedBox(height: 16),
        statCard("Active Routes", "8", Icons.map, Colors.blue),
        const SizedBox(height: 16),
        statCard("On Time", "10", Icons.timer, Colors.green),
        const SizedBox(height: 16),
        statCard("Students", "2450", Icons.people, Colors.purple),
      ]),
    );
  }

  Widget statCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(color: Colors.white70)),
            Text(value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ]),
          Icon(icon, color: Colors.white, size: 40),
        ],
      ),
    );
  }

  // -------------------------- BUS MANAGEMENT --------------------------
  Widget busManagementView() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: buses.map((bus) {
        return Card(
          child: ListTile(
            title: Text(bus['number']),
            subtitle: Text(bus['route']),
            trailing: Text(
              bus['status'],
              style: TextStyle(
                  color: bus['status'] == "On Time"
                      ? Colors.green
                      : Colors.orange),
            ),
          ),
        );
      }).toList(),
    );
  }

  // -------------------------- ROUTES VIEW --------------------------
  Widget routesView() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: routes.map((route) {
        return Card(
          child: ListTile(
            title: Text(route['name']),
            subtitle: Text("${route['buses']} buses assigned"),
            trailing: Chip(
              label: Text(route['active'] ? "Active" : "Inactive"),
              backgroundColor:
                  route['active'] ? Colors.green[100] : Colors.grey[300],
            ),
          ),
        );
      }).toList(),
    );
  }
}
