import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tdd_example/domain/use_cases/get_current_weather.dart';
import 'package:tdd_example/presentation/bloc/weather_event.dart';
import 'package:tdd_example/presentation/bloc/weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this._getCurrentWeahterUseCase,
  ) : super(
          const WeatherEmpty(),
        ) {
    on<OnCityChanged>(
      onCityChanged,
      transformer: debounce(
        const Duration(milliseconds: 500),
      ),
    );
  }

  final GetCurrentWeahterUseCase _getCurrentWeahterUseCase;

  Future<void> onCityChanged(OnCityChanged event, Emitter emit) async {
    emit(const WeatherLoading());

    final result = await _getCurrentWeahterUseCase.execute(event.cityName);

    result.fold(
      (failure) {
        emit(
          WeatherLoadFailure(failure.message),
        );
      },
      (data) {
        emit(
          WeatherLoaded(data),
        );
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
