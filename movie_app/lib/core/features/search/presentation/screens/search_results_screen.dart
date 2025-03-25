// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/core/features/search/presentation/blocs/search_bloc.dart';
import 'package:movie_app/core/features/search/presentation/blocs/search_event.dart';
import 'package:movie_app/core/features/search/presentation/blocs/search_state.dart';
import 'package:movie_app/core/features/search/presentation/widgets/search_result_card.dart';
import 'package:movie_app/core/presentation/widgets/app_bar_with_back.dart';
import 'package:movie_app/core/presentation/widgets/drawer_column.dart';
import 'package:movie_app/features/auth/presentation/widgets/text_field_decoration.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key, required this.keyword});

  final String keyword;

  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _searchFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchFieldController.text = widget.keyword;
  }

  void _performSearch() {
    if (_formKey.currentState!.validate()) {
      final keyword = _searchFieldController.text.trim();
      if (keyword.isNotEmpty) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultsScreen(keyword: keyword)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchBloc>()..add(FetchSearchResults(widget.keyword)),
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: Drawer(child: DrawerColumn()),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFieldDecoration(
                          textFormField: TextFormField(
                            controller: _searchFieldController,
                            decoration: InputDecoration(hintText: 'Search for movies...', border: InputBorder.none),
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Enter a search term';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      IconButton(onPressed: _performSearch, icon: Icon(Icons.search)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      if (state is SearchLoading) {
                        return Center(child: CircularProgressIndicator());
                      } else if (state is SearchDone) {
                        final movies = state.searchResults!;
                        return GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: movies.length,
                          itemBuilder: (context, index) {
                            final movie = movies[index];
                            return Padding(padding: const EdgeInsets.all(8.0), child: SearchResultsCard(movie: movie));
                          },
                        );
                      } else if (state is SearchError) {
                        return Center(child: Text("Failed to load movies"));
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
