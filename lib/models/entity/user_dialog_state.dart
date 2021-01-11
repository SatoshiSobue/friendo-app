import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_dialog_state.freezed.dart';

final userDialogStateProvider =
    StateNotifierProvider.family<UserDialogStateController, int>(
  (ref, int) => UserDialogStateController(),
);

@freezed
abstract class UserDialogState implements _$UserDialogState {
  factory UserDialogState(
      {@Default('田中圭') String name,
      @Default('たなかけい') String pronounce,
      @Default('1994/10/03') String birthDay}) = _UserDialogState;
  UserDialogState._();
}

class UserDialogStateController extends StateNotifier<UserDialogState> {
  UserDialogStateController() : super(UserDialogState());

  void updateName(String newName) {
    state = state.copyWith(name: newName);
  }

  void updatePronounce(String newPronounce) {
    state = state.copyWith(pronounce: newPronounce);
  }

  void updateBirthDay(String newBirthDay) {
    state = state.copyWith(birthDay: newBirthDay);
  }
}
