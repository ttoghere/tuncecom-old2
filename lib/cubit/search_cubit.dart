part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {

  SearchCubit() : super(SearchLoading());

  void searchTextChanged(String searchQuery) {
    emit(SearchLoading());
    try {
      // TODO: Add your search logic here
      List<String> searchResults = [];
      emit(SearchLoaded(searchQuery: searchQuery, searchResults: searchResults));
    } catch (e) {
      emit(SearchError());
    }
  }

  void search(String searchQuery) {
    emit(SearchLoading());
    try {
      // TODO: Add your search logic here
      List<String> searchResults = [];
      emit(SearchLoaded(searchQuery: searchQuery, searchResults: searchResults));
    } catch (e) {
      emit(SearchError());
    }
  }
}