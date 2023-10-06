part of 'search_cubit.dart';

enum SearchStatus {
  initial,
  loading,
  loaded,
  error,
}

class SearchState {
  const SearchState({
    this.status = SearchStatus.initial,
    this.searchQuery = '',
    this.searchResults = const [],
  });

  final SearchStatus status;
  final String searchQuery;
  final List<String> searchResults;

  SearchState copyWith({
    SearchStatus? status,
    String? searchQuery,
    List<String>? searchResults,
  }) {
    return SearchState(
      status: status ?? this.status,
      searchQuery: searchQuery ?? this.searchQuery,
      searchResults: searchResults ?? this.searchResults,
    );
  }

  @override
  List<Object?> get props => [status, searchQuery, searchResults];
}