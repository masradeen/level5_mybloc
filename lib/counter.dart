import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<String, int> {
  CounterBloc() : super(0);

  int _counter = 0;
  int get counter => _counter;

  
  Stream<int> mapEventToState(event) async* {
    if (event == 'add') {
      _counter++;
    } else {
      _counter--;
    }

    //untuk return stream value, pakai async* juga. async* akan mereturn stream value
    yield _counter;
  }
}
