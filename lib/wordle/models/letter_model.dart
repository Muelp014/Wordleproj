import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wordleproj/app/app_colors.dart';

enum LetterStatus { initial, notInword, inWord, correct }

class Letter extends Equatable {
  const Letter({
    required this.val,
    this.status = LetterStatus.initial,
  });

  factory Letter.empty() => const Letter(val: '');

  final String val;
  final LetterStatus status;

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return Color.fromARGB(147, 0, 0, 0);
      case LetterStatus.notInword:
        return notInWordColor;
      case LetterStatus.inWord:
        return inWordColor;
      case LetterStatus.correct:
        return correctColor;
    }
  }

  Color get borderColor {
    switch (status) {
      case LetterStatus.initial:
        return Color.fromARGB(255, 240, 11, 118);
      default:
        return Color.fromARGB(255, 11, 255, 235);
    }
  }

  Letter copyWith({
    String? val,
    LetterStatus? status,
  }) {
    return Letter(
      val: val ?? this.val,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [val, status];
}
