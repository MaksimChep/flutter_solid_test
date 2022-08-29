import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_solid_test/bloc/home/bloc/home_bloc.dart';

//Home screen of the application
class HomeScreen extends StatelessWidget {
  //Constructor of the widget
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        const max = 255;

        return state is HomeColorChanged
            ? _buildScaffold(
                context: context,
                r: state.r,
                g: state.g,
                b: state.b,
              )
            : _buildScaffold(context: context, r: max, g: max, b: max);
      },
    );
  }

  Widget _buildScaffold({
    required BuildContext context,
    required int r,
    required int g,
    required int b,
  }) {
    final Color color = Color.fromRGBO(r, g, b, 100);
    const fontSize = 40.0;
    const luminance = 0.5;

    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            context.read<HomeBloc>().add(ChangeColorEvent());
          },
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: fontSize,
                color: color.computeLuminance() > luminance
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
