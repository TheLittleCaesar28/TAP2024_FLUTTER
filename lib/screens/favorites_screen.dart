/*import 'package:flutter/material.dart';
import 'package:tap/models/popular_model.dart';
import 'package:tap/network/api_popular.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoritos"),
      ),
      body: FutureBuilder<List<PopularModel>>(
        future: ApiPopular().getFavorites(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error al cargar favoritos."));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No hay películas favoritas."));
          } else {
            final favorites = snapshot.data!;
            return ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final movie = favorites[index];
                return ListTile(
                  leading: Image.network(
                    'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                  title: Text(movie.title),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/detail',
                      arguments: movie,
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}*/