import 'package:flutter/material.dart';

import 'package:studio_core/app/game_api.dart';
import 'kids_quiz_view.dart';
import 'rules.dart';

/// Kids & Family game: kidsMode treats every player as a child (no
/// personalized ads, no analytics, child-directed ad requests, parental
/// gate in the shop).
final gameConfig = GameConfig(
  gameId: 'game-066-shape-matching',
  title: const ['Şekil Eşleştirme', 'Shape Matching', 'Formen Zuordnen', 'Unir Formas', 'Formes à Associer'],
  tagline: const ['Şekilleri, gölgeleri ve renkleri eşleştir!', 'Match shapes, shadows and colors!', 'Formen, Schatten und Farben!', '¡Formas, sombras y colores!', 'Formes, ombres et couleurs !'],
  seedColor: const Color(0xFF8338EC),
  icon: Icons.category,
  rules: ShapeRules(),
  buildPlay: (ctx) => KidsQuizView(ctx: ctx),
  kidsMode: true,
  tutorial: const [
    TutorialStep(Icons.category, ['Aynı şekli bul.', 'Find the same shape.', 'Finde die gleiche Form.', 'Busca la misma forma.', 'Trouve la même forme.']),
    TutorialStep(Icons.dark_mode, ['Gölge kimin?', 'Whose shadow is it?', 'Wessen Schatten?', '¿De quién es la sombra?', 'À qui est l\'ombre ?']),
    TutorialStep(Icons.change_history, ['Köşeleri say.', 'Count the corners.', 'Zähle die Ecken.', 'Cuenta las esquinas.', 'Compte les coins.']),
  ],
);
