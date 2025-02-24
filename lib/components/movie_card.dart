import 'package:flutter/material.dart';

import '../models/movie.dart';



class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: movie.imageURI != null
                ? Ink(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(movie.imageURI!),
                          fit: BoxFit.cover),
                    ),
                  )
                : Ink(
                    child: const Center(
                      child: Icon(Icons.error),
                    ),
                  ),
          ),
        ),
        Text(
          movie.name,
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}
