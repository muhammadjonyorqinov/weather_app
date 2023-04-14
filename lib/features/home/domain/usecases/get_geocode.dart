import 'package:dartz/dartz.dart';
import '../../data/models/geocode.dart';
import '../params/geocode_params.dart';
import '/features/home/domain/repository/weather_repo.dart';
import '/utils/core/failures.dart';
import '/utils/core/usecase.dart';



class GetGeoCode implements UseCase<GeoCode?, GeoCodeParams> {
  final WeatherRepo repo;

  GetGeoCode({required this.repo});

  @override
  Future<Either<Failure, GeoCode?>> call(GeoCodeParams params) async {
    return await repo.getGeoCode(params);
  }
}

