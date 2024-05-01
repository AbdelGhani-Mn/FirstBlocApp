import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pixel/bloc/counter_bloc.dart';
import 'package:test_pixel/widgets/button_widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value is:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial){
                  return const Text(
              '0',
              style: TextStyle(color: Colors.blueGrey, fontSize: 30),
            );}
            else if(state is CounterValueChangedState){
              return Text(
              state.counter.toString(),
              style: TextStyle(color: Colors.blueGrey, fontSize: 30),
            );
            } else
                {return const SizedBox();}
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const ButtonWidget()
    );
  }
}
