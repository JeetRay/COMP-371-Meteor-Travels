import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage ({Key? key}) : super(key:key);

  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage>{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar (
      title: const Text('Search'),
      actions :[
        IconButton (
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch (
              context: context,
              delegate: mySearchDelegate(),
            );
          },
        )
      ]
    )
  );
}
class mySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Rita-Carlton Hotel',
    'Marriot',
    'Hyatt',
    'Four Seasons',
    'Alan Hotel',
    'Ambassador Hotel',
    'Andaz West Hollywood',
    'The Beverly Hills Hotel',
    'The Beverly Hilton',
    'Beverly Wilshire Hotel',
    'Boyle Hotel – Cummings Block',
    'Cecil Hotel',
    'Century Plaza Hotel',
    'Chateau Marmont',
    'Crowne Plaza: Los Angeles-Commerce Casino',
    'Culver Hotel',
    'DoubleTree by Hilton Hotel Los Angeles Downtown',
    'Downtown Standard Hotel',
    'Dunbar Hotel',
    'Fremont Hotel, Los Angeles',
    'Glen-Holly Hotel',
    'Hollywood Hotel',
    'Hollywood Melrose Hotel',
    'Hollywood Roosevelt Hotel[1]',
    'Hotel Alexandria',
    'Hotel Bel-Air',
    'Hotel Chancellor',
    'Hotel Indigo: Los Angeles Downtown',
    'InterContinental: Los Angeles Downtown',
    'Los Angeles Marriott',
    'Knickerbocker Hotel',
    'Millennium Biltmore Hotel',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context,null),
  );

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      ),
  );


  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
  final result = searchResults.toLowerCase();
  final input = query.toLowerCase();
  return result.contains(input);
  }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder:(context,index) {
        final suggestion = suggestions[index];
        return ListTile (
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      }
    );
  }
  
}