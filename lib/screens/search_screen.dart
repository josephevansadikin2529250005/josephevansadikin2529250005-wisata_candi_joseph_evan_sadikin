import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState(); 
}

class _SearchScreenState extends State<SearchScreen> {

  List<Candi> _filteredCandis = [];
  String _searchQuery = '';
  final TextEditingController _SearchControler = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pencarian Candi'),),
      body: Column(
        children: [
          TextField(),
          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index) {
              final candi = _filteredCandis[index];
              return Card();
            }
          )
        ],
      ),
    );
  }
}