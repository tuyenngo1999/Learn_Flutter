import 'package:wordle_game/events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0);
}