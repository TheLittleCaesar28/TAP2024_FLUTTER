import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:tap/models/popular_model.dart';
import 'package:tap/network/api_popular.dart';

class DetailPopular extends StatefulWidget {
  const DetailPopular({super.key});

  @override
  State<DetailPopular> createState() => _DetailPopularState();
}

class _DetailPopularState extends State<DetailPopular> {
  YoutubePlayerController? _youtubeController;
  String? trailerUrl;
  String? videoKey;
  bool isVideoAvailable = false;
  List<Map<String, dynamic>> actors = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

    ApiPopular().getTrailer(popular.id).then((url) {
      if (url != null) {
        setState(() {
          trailerUrl = url;
          videoKey = YoutubePlayer.convertUrlToId(trailerUrl!);
          if (videoKey != null) {
            isVideoAvailable = true;
            _youtubeController = YoutubePlayerController(
              initialVideoId: videoKey!,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            );
          }
        });
      }
    });

    ApiPopular().getActors(popular.id).then((actorList) {
      setState(() {
        actors = actorList;
      });
    });
  }

  @override
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

    double rating = (popular.voteAverage / 10).clamp(0, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(popular.title),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/${popular.posterPath}',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: popular.id,
                    child: Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 5),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500/${popular.posterPath}',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    popular.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RatingBarIndicator(
                    rating: rating,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 1,
                    itemSize: 50.0,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${popular.voteAverage} / 10',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Descripción',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    popular.overview,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Trailer',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (isVideoAvailable)
                    YoutubePlayer(
                      controller: _youtubeController!,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                    )
                  else
                    const Center(
                      child: Text(
                        "No hay tráiler disponible.",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    "Actores",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  actors.isNotEmpty
                      ? SizedBox(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: actors.length,
                            itemBuilder: (context, index) {
                              final actor = actors[index];
                              return Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: actor['profilePath'] !=
                                              null
                                          ? NetworkImage(
                                              'https://image.tmdb.org/t/p/w500/${actor['profilePath']}')
                                          : const AssetImage(
                                                  'assets/default_actor.png')
                                              as ImageProvider,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      actor['name'],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      actor['character'],
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: Text(
                            "Cargando actores...",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
