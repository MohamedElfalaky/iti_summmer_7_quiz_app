import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'squar_sizing_state.dart';

class SquareSizingCubit extends Cubit<SquareSizingState> {
  SquareSizingCubit() : super(SquarSizingSmall());

  double squareHeight = 100;
  double squareWidth = 100;

  void turnToSmallSquare() {
    squareHeight = 100;
    squareWidth = 100;

    emit(SquarSizingSmall());
  }

  void turnToMediumSquare() {
    squareHeight = 200;
    squareWidth = 200;

    emit(SquareSizingMedium());
  }

  void turnToLargeSquare() {
    squareHeight = 300;
    squareWidth = 300;

    emit(SquareSizingLarge());
  }

  void turnToSuperLargeSquare() {
    squareHeight = 400;
    squareWidth = 400;

    emit(SquareSizingSuperLarge());
  }
}
