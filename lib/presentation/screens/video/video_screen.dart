import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  static const name = 'video_screen';

  const VideoScreen({super.key});
  @override
  VideoScreenState createState() => VideoScreenState();
}

class VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    String videoId;
    videoId = YoutubePlayer.convertUrlToId(
            "https://www.youtube.com/watch?v=InuMkrTDqq4") ??
        '';

    // Crea un YoutubePlayerController para reproducir el video de YouTube con el ID "my-video-id".
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: _VideoPlayer(controller: _controller),
            ),
          ),
          Expanded(
            child: Container(
                width: double.maxFinite,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    color: Colors.white),
                child: const Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Descripcion',
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '',
                            maxLines: 3,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Requerimientos',
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 5),
                          Text(''),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Stack(
            children: [
              Container(
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 20.0,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: FilledButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)))),
                      onPressed: () {},
                      child: Text(
                        'Ejercicios',
                        style: GoogleFonts.sarabun(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _VideoPlayer extends StatelessWidget {
  const _VideoPlayer({
    super.key,
    required YoutubePlayerController controller,
  }) : _controller = controller;

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      onReady: () {
        // Reproduce el video automáticamente cuando esté listo.
        _controller.play();
      },
    );
  }
}
