part of 'squar_sizing_cubit.dart';

@immutable
sealed class SquareSizingState {}

final class SquarSizingSmall extends SquareSizingState {
  final String squareDescription;
  SquarSizingSmall({this.squareDescription = 'this square is small'});
}

final class SquareSizingMedium extends SquareSizingState {
  final String squareDescription;
  final String additionalDescription;
  SquareSizingMedium(
      {this.squareDescription = 'this square is Medium',
      this.additionalDescription = 'square height and width are 200 px'});
}

final class SquareSizingLarge extends SquareSizingState {
  final String squareDescription;
  SquareSizingLarge({this.squareDescription = 'this square is Large'});
}

final class SquareSizingSuperLarge extends SquareSizingState {
  final String squareDescription;
  final String warning;

  SquareSizingSuperLarge(
      {this.squareDescription = 'this square is Super Large',
      this.warning = 'this square is so large it could make error to your UI'});
}
