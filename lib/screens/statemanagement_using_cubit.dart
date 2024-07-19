import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_summmer_7_quiz_app/cubits/square_sizing_cubit/squar_sizing_cubit.dart';

class StatemanagementUsingCubit extends StatelessWidget {
  StatemanagementUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    SquareSizingCubit _cubit = context.read<SquareSizingCubit>();
    // SquarSizingCubit _cubit = BlocProvider.of<SquarSizingCubit>(context);

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            BlocBuilder<SquareSizingCubit, SquareSizingState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(state is SquarSizingSmall
                      ? state.squareDescription
                      : state is SquareSizingMedium
                          ? state.additionalDescription
                          : state is SquareSizingSuperLarge
                              ? state.warning
                              : ''),
                );
              },
            ),

            BlocBuilder<SquareSizingCubit, SquareSizingState>(
              builder: (context, state) {
                return Container(
                  height: _cubit.squareHeight,
                  width: _cubit.squareWidth,
                  color: Colors.red,
                );
              },
            ),
            Spacer(),
            // Spacer(),

            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    _cubit.turnToSmallSquare();
                  },
                  child: Text("small square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    _cubit.turnToMediumSquare();
                  },
                  child: Text("Medium square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    _cubit.turnToLargeSquare();
                  },
                  child: Text("Large square")),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                  onPressed: () {
                    _cubit.turnToSuperLargeSquare();
                  },
                  child: Text("Super large square")),
            ),
          ],
        ),
      ),
    );
  }
}

///////  State management //////





