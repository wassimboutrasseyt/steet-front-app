import 'package:graphql/client.dart';

abstract class DataState<T> {
  final T? data;
  final OperationException? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(OperationException error) : super(error: error);
}
