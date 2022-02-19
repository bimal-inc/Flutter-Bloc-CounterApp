// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counterapp/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App Bloc"),
        ),
        drawer: Drawer(),
        body: BlocProvider(
          create: (context) => BlocBloc(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                BlocBuilder<BlocBloc, BlocState>(
                  builder: (context, state) {
                    return Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () => context
                                  .read<BlocBloc>()
                                  .add(DecrementEvent()),
                              child: Icon(Icons.exposure_minus_1_sharp),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              state.counterValue.toString(),
                              style:
                                  TextStyle(color: Colors.green, fontSize: 90),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () => context
                                  .read<BlocBloc>()
                                  .add(IncrementEvent()),
                              child: Icon(Icons.add),
                            )
                          ]),
                    );
                  },
                )
              ]),
        ),
      ),
    );
  }
}
