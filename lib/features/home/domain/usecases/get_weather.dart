import 'package:dartz/dartz.dart';
import '../../data/models/weather_response.dart';
import '../params/weather_params.dart';
import '/features/home/domain/repository/weather_repo.dart';
import '/utils/core/failures.dart';
import '/utils/core/usecase.dart';

class GetWeather implements UseCase<WeatherResponse?, WeatherParams> {
  final WeatherRepo repo;

  GetWeather({required this.repo});

  @override
  Future<Either<Failure, WeatherResponse?>> call(WeatherParams params) async {
    return await repo.getWeather(params);
  }
}
