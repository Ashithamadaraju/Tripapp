// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Travel Packages',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TravelPackageList(),
//     );
//   }
// }

// class TravelPackageList extends StatefulWidget {
//   @override
//   _TravelPackageListState createState() => _TravelPackageListState();
// }

// class _TravelPackageListState extends State<TravelPackageList> {
//   List packages = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchPackages();
//   }

//   Future<void> fetchPackages() async {
//     final response = await http.get(Uri.parse('http://your-backend-url/packages'));
//     if (response.statusCode == 200) {
//       setState(() {
//         packages = json.decode(response.body);
//       });
//     } else {
//       throw Exception('Failed to load packages');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Travel Packages')),
//       body: ListView.builder(
//         itemCount: packages.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(packages[index]['name']),
//             subtitle: Text('${packages[index]['location']} - \$${packages[index]['price']}'),
//             trailing: Text(packages[index]['agent']),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Travel Packages',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TravelPackageList(),
//     );
//   }
// }

// class TravelPackageList extends StatefulWidget {
//   @override
//   _TravelPackageListState createState() => _TravelPackageListState();
// }

// class _TravelPackageListState extends State<TravelPackageList> {
//   List packages = [];
//   List filteredPackages = [];
//   TextEditingController searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     fetchPackages();
//   }

//   Future<void> fetchPackages() async {
//     final response = await http.get(Uri.parse('http://your-backend-url/packages'));
//     if (response.statusCode == 200) {
//       setState(() {
//         packages = json.decode(response.body);
//         filteredPackages = packages;
//       });
//     } else {
//       throw Exception('Failed to load packages');
//     }
//   }

//   void searchPackages() {
//     String query = searchController.text.toLowerCase();
//     setState(() {
//       filteredPackages = packages.where((package) {
//         return package['name'].toLowerCase().contains(query) ||
//                package['location'].toLowerCase().contains(query);
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Travel Packages'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: searchController,
//                     decoration: InputDecoration(
//                       labelText: 'Search',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 ElevatedButton(
//                   onPressed: searchPackages,
//                   child: Icon(Icons.search),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Image.network('https://source.unsplash.com/600x300/?travel,nature'),
//                 SizedBox(height: 10),
//                 Text(
//                   '"Travel makes one modest. You see what a tiny place you occupy in the world."',
//                   style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredPackages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(filteredPackages[index]['name']),
//                   subtitle: Text('${filteredPackages[index]['location']} - \$${filteredPackages[index]['price']}'),
//                   trailing: Text(filteredPackages[index]['agent']),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Packages',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TravelPackageList(),
    );
  }
}

class TravelPackageList extends StatefulWidget {
  @override
  _TravelPackageListState createState() => _TravelPackageListState();
}

class _TravelPackageListState extends State<TravelPackageList> {
  List packages = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchPackages();
  }

  Future<void> fetchPackages() async {
    final response = await http.get(
      Uri.parse('http://your-backend-url/packages'),
    );
    if (response.statusCode == 200) {
      setState(() {
        packages = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load packages');
    }
  }

  void searchPackages() {
    String query = searchController.text.toLowerCase();
    setState(() {
      packages =
          packages
              .where((pkg) => pkg['name'].toLowerCase().contains(query))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Travel Packages')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/travel_theme_india.jpeg', // Make sure you have an image in the assets folder
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  '"Travel is the only thing you buy that makes you richer."',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    labelText: 'Search Travel Packages',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: searchPackages,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: searchPackages,
                  child: Text('Search'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Submit button functionality (You can add logic here)
                    print("Submit button pressed");
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: packages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(packages[index]['name']),
                  subtitle: Text(
                    '${packages[index]['location']} - \$${packages[index]['price']}',
                  ),
                  trailing: Text(packages[index]['agent']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
