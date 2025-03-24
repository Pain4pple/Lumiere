import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/core/presentation/widgets/app_bar.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_bloc.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_event.dart';
import 'package:movie_app/features/movie_list/presentation/widgets/movie_row_list.dart';
import 'package:movie_app/features/video/presentation/widgets/video_carousel.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => sl<MovieListsBloc>(), child: _MovieListScreen());
  }
}

class _MovieListScreen extends StatefulWidget {
  const _MovieListScreen();

  @override
  State<_MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<_MovieListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MovieListsBloc>().add(FetchAllMovieCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            const Spacer(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                context.read<AuthCubit>().logout();
                context.replace('/login');
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: const Color.fromARGB(223, 92, 92, 92)),
              title: Text("About the app", style: TextStyle(color: const Color.fromARGB(223, 92, 92, 92))),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MovieCarousel(),
              const SizedBox(height: 20),
              SizedBox(height: 300, child: MovieRowList(movieCategory: "Now Playing")),
              SizedBox(height: 300, child: MovieRowList(movieCategory: "Best Picture - The Academy Awards")),
              SizedBox(height: 300, child: MovieRowList(movieCategory: "Top Rated")),
              SizedBox(height: 300, child: MovieRowList(movieCategory: "Filipino Movies")),
              SizedBox(height: 300, child: MovieRowList(movieCategory: "Classics")),
            ],
          ),
        ),
      ),
    );
  }
}
