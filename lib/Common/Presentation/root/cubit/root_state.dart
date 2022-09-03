part of 'root_cubit.dart';

class RootState extends Equatable {
  const RootState({
    required this.currentPageIndex,
  });

  const RootState.initial() : this(currentPageIndex: 0);

  final int currentPageIndex;

  RootState copyWith({
    int? currentPageIndex,
  }) {
    return RootState(
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }

  @override
  List<Object> get props => [currentPageIndex];
}
