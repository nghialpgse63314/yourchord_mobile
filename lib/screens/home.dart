import 'package:flutter/material.dart';
import 'package:yourchord/screens/profile.dart';
import 'package:yourchord/screens/search.dart';
import 'package:yourchord/screens/settings.dart';
import 'package:yourchord/screens/testtab2.dart';
import 'package:yourchord/screens/trending.dart';
import 'chord.dart';
import 'collections.dart';
import 'genres.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const appTitle = 'Your chord';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      // home: MyHomePage(title: appTitle),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            // title: Text('YOUR CHORD'),
            toolbarHeight: 35,
            backgroundColor: Colors.lightBlueAccent,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'Genres',
                ),
                Tab(
                  text: 'Instruments',
                ),
              ],
            ),
            actions: [
              // Navigate to the Search Screen
              IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomeSearchDelegate(),
                  );
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          body: TabBarViewWidget(),
          drawer: DrawerWidget()),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // itemExtent: 30,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 115,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              accountName: Container(
                // alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "user Name",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
              ),
              accountEmail: Container(
                // alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "a@a.gmail.com",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.music_note),
              title: const Text('Chord'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChordPage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.collections),
              title: const Text('Collections'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CollectionPage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.record_voice_over),
              title: const Text('Record'),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(child: TrendingPage()),
        Center(child: GenresPage()),
        Center(child: Text('')),
      ],
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Chord',
//       style: optionStyle,
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             SizedBox(
//               height: 100,
//               child: const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text('Header'),
//               ),
//             ),
//
//             ListTile(
//               leading: Icon(Icons.home),
//               title: const Text('Home'),
//               selected: _selectedIndex == 0,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(0);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.search),
//               title: const Text('Search'),
//               selected: _selectedIndex == 1,
//               onTap: () {
//                 // Update the state of the app
//                 // _onItemTapped(1);
//                 // Then close the drawer
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>  SearchBar()));
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.music_note),
//               title: const Text('Chord'),
//               selected: _selectedIndex == 2,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(2);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }

//search
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  static const routeName = '/search-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('search Page'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomeSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class CustomeSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Oranges',
    'Pear',
    'Blueberries',
    'Strawberries'
  ];

  // clear query
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
