import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  double _fontSize = 14.0; // Tamaño de fuente inicial

  void _increaseFontSize() {
    setState(() {
      _fontSize += 1.0; // Incrementa el tamaño de fuente en 1
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 1.0; // Decrementa el tamaño de fuente en 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: _increaseFontSize,
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: _decreaseFontSize,
              icon: const Icon(Icons.remove),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
              child: Text(
                '3D',
                style: TextStyle(
                  fontFamily: 'Times New Roman', // Establece aquí el nombre de la fuente
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Programas',
                  style: TextStyle(
                    fontFamily: 'Georgia', // Establece aquí el nombre de la fuente
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Programación',
                  style: TextStyle(
                    fontFamily: 'Helvetica', // Establece aquí el nombre de la fuente
                  ),
                ),
              ),
            ],
          ),
          title: const Text('Ingeniería en Multimedia'),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_shapes),
                        title: Text('LEGO'),
                        subtitle: Text('Render hecho en Blender.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/3d1.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_shapes),
                        title: Text('Lago'),
                        subtitle: Text('Render hecho en Blender.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/3d2.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_shapes),
                        title: Text('The Last of Us'),
                        subtitle: Text('Render hecho en Blender.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/3d3.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_shapes),
                        title: Text('Glaciares'),
                        subtitle: Text('Render hecho en Blender.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/3d4.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.format_shapes),
                        title: Text('Dona'),
                        subtitle: Text('Render hecho en Blender'),
                      ),
                      VideoPlayerView(
                        url: 'assets/videos/dona.mp4',
                        dataSourceType: DataSourceType.asset,
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('¿Sabías qué?'),
                          content: Text('¡Blender es un programa open-source que lleva más de 2 décadas en desarrollo!'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Wow, ¡no lo sabía!'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Dato Curioso'),
                ),
              ],
            ),
// ----------------------------------------------------------------------------------------------------------------------------
            ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.computer),
                        title: Text('Adobe Illustrator'),
                        subtitle: Text('Edición de vectores.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/p1.jpg'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.computer),
                        title: Text('Adobe Photoshop'),
                        subtitle: Text('Edición y montaje de imagenes.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/p2.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.computer),
                        title: Text('Adobe Audition'),
                        subtitle: Text('Edición y manipulación de audio.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/p3.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.computer),
                        title: Text('Adobe Premiere Pro'),
                        subtitle: Text('Edición de vídeo.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/p4.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.computer),
                        title: Text('Spark AR'),
                        subtitle: Text(
                            'Creación y manipulación de filtros de realidad aumentada.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/p5.jpg'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Piratear es malo...'),
                          content: Text('A excepción de que sean Adobe o Nintendo, en esos casos es completamente ético y moral.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Cerrar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Consejo del día'),
                ),
              ],
            ),
// ----------------------------------------------------------------------------------------------------------------------------
            ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('HTML'),
                        subtitle: Text('Desarrollo de páginas web.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/pr1.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Python'),
                        subtitle: Text('Lenguaje de alto nivel.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/pr2.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('C++'),
                        subtitle: Text('Orientado a Arduino.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/pr3.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('C#'),
                        subtitle: Text('Creación de videojuegos.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/pr4.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Dart'),
                        subtitle: Text('Desarrollo de apps móviles.'),
                      ),
                      Image(
                        image: AssetImage(
                            'assets/images/pr5.png'), // Ruta relativa del directorio de assets dentro de tu aplicación
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('¿Porque le disparó un dardo un cazador inglés a la compu? '),
                          content: Text('Porque le dijeron que tenía un Python en ella'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ja ja ja. Cállese, Muñoz.'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Chiste del día'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum DataSourceType {
  asset,
  network,
  file,
  contentUri,
}

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({
    super.key,
    required this.url,
    required this.dataSourceType,
  });

  final String url;

  final DataSourceType dataSourceType;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _videoPlayerController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        _videoPlayerController = VideoPlayerController.network(widget.url);
        break;
      case DataSourceType.file:
        _videoPlayerController = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _videoPlayerController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
    }

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 1 / 1,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Divider(),
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Chewie(controller: _chewieController),
        )
      ],
    );
  }
}
