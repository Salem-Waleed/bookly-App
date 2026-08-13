import 'package:bookly_app/core/Utils/api_service.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetrBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:computer&filter=free-ebooks&orderBy=newest',
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } 
    catch (e) {
     if(e is DioException){
      return left(ServerFailure.fromDioError(e));
     }
     return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks()async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:computer&filter=free-ebooks',
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } 
    catch (e) {
     if(e is DioException){
      return left(ServerFailure.fromDioError(e));
     }
     return left(ServerFailure(e.toString()));
    }
  }
}
