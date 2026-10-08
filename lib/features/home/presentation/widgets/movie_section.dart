import 'package:flutter/material.dart';
import 'package:stream_box/features/home/data/models/movie.dart';
import 'movie_card.dart';

class MovieSection extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const MovieSection({super.key, required this.title, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),

        LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;

            double cardWidth;

            if (width < 600) {
              cardWidth = 140;
            } else if (width < 1000) {
              cardWidth = 170;
            } else {
              cardWidth = 200;
            }

            final cardHeight = (cardWidth * 1.43) + 60;

            return SizedBox(
              height: cardHeight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  return MovieCard(movie: movies[index], width: cardWidth);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
