part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}


 class FeaturedBooksLoading extends NewsetBooksState {}
 class FeaturedBooksFailure extends NewsetBooksState {
  final String errorMessage;

  const FeaturedBooksFailure(this.errorMessage);
}
 class FeaturedBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
 }

