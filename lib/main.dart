import 'package:flutter/material.dart';
import 'package:valenciaexam/pagina_inicial.dart';
import 'package:valenciaexam/pagina_animatedIcon.dart';
import 'package:valenciaexam/pagina_clipPath.dart';
import 'package:valenciaexam/pagina_heroAnimation.dart';
import 'package:valenciaexam/pagina_rangeSlider.dart';
import 'package:valenciaexam/pagina_refreshIndicator.dart';
import 'package:valenciaexam/pagina_fractionallySizedbox.dart';
import 'pagina_valueNotifier.dart';
import 'package:valenciaexam/pagina_listener.dart';

void main() => runApp(const MisWidgets());

class MisWidgets extends StatelessWidget {
  const MisWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/animatedicon': (context) => const AnimatedIconExam(),
        '/clippath': (context) => const ClipPathExam(),
        '/heroanimation': (context) => const HeroAnimationExam(),
        '/rangeslider': (context) => const RangeSliderExam(),
        '/refreshindicator': (context) => const RefreshIndicatorExam(),
        '/fractionallysizedBox': (context) => const FractionallySizedBoxExam(),
        '/valuenotifier': (context) => const ValueNotifierExam(),
        '/listener': (context) => const ListenerExam(),
      },
    );
  }
}
