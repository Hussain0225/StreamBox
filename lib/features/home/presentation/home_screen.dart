import 'package:flutter/material.dart';
import 'package:stream_box/features/home/presentation/widgets/hero_banner.dart';

import '../data/dummy_movies.dart';
import 'widgets/movie_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'StreamBox',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        children: [
          HeroBanner(
            movie: movies[0],
          ),

          const SizedBox(height: 30),

          const MovieSection(
            title: '🔥 Trending',
            movies: movies,
          ),

          const SizedBox(height: 30),

          const MovieSection(
            title: '⭐ Popular',
            movies: movies,
          ),

          const SizedBox(height: 30),

          const MovieSection(
            title: '🆕 New Releases',
            movies: movies,
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}