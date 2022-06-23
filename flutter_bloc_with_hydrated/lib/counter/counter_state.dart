// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'CounterEvent(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counter': counter,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counter: map['counter']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source));
}
