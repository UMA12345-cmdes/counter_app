import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rx_dart_counter/modules/bloc/counter_bloc.dart';

class MyHomePage extends StatefulWidget {
  final String? title;

  const MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final Counter _counterBloc = Counter(initialCount: 0);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Counter App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                if (state is CounterIncrement) {
                  return Text(state.counter.toString(),
                      style: Theme.of(context).textTheme.headline4);
                }
                return Text('0', style: Theme.of(context).textTheme.headline4);
              })
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                onPressed: () {
                  counterBloc.add(IncrementEvent());
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              )),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(DecrementEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ]));
  }

  // @override
  // void dispose() {
  //   _counterBloc.dispose();
  //   super.dispose();
  // }
}
