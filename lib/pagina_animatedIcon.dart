import 'package:flutter/material.dart';

class AnimatedIconExam extends StatefulWidget {
  const AnimatedIconExam({Key? key}) : super(key: key);

  @override
  _AnimatedIconExamState createState() => _AnimatedIconExamState();
}

class _AnimatedIconExamState extends State<AnimatedIconExam>
    with SingleTickerProviderStateMixin {
  // create the animation controller
  late AnimationController _animationController;

  // initialize the animation controller
  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  // dispose the animation controller when widget is removed
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // method for when user taps icon
  bool videoPlaying = false;
  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valencia'),
        backgroundColor: Colors.deepPurple, // Para que combine con el fondo
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
            size: 150,
            color: Colors.white, // Icono blanco para mejor contraste
          ),
        ),
      ),
    );
  }
}
