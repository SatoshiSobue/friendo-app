import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'todo_state.freezed.dart';

final todoStateProvider =
    StateNotifierProvider.family<TodoStateController, int>(
  (ref, int) => TodoStateController(),
);

@freezed
abstract class TodoState implements _$TodoState {
  factory TodoState({bool isDone}) = _TodoState;

  TodoState._();
}

class TodoStateController extends StateNotifier<TodoState> {
  TodoStateController() : super(TodoState());

  void toggleTodoState() {
    state = state.copyWith(isDone: !state.isDone);
  }
}
