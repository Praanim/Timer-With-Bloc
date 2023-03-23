part of 'timer_bloc.dart';

@immutable
abstract class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  //super or Timerstate initialize huncha with the help of timerInitial
  const TimerInitial(super.duration);

  @override
  String toString() {
    return "TimerInitial {duration : $duration}";
  }
}

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() {
    return "TimerRunPause {duration : $duration}";
  }
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() {
    return "TimerRunInProgres {duration : $duration}";
  }
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
