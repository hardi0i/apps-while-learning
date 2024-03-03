import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/weather/cubit/weather_cubit.dart';
import 'package:flutter_weather/weather/models/models.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage._();

  const SettingsPage({super.key});

  static Route<void> route(WeatherCubit weatherCubit) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider.value(
        value: weatherCubit,
        child: const SettingsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          BlocBuilder<WeatherCubit, WeatherState>(
            buildWhen: (previous, current) {
              return previous.temperatureUnits != current.temperatureUnits;
            },
            builder: (context, state) {
              return ListTile(
                title: const Text('Temperature Units'),
                isThreeLine: true,
                subtitle: const Text(
                  'Use metric mesurements for temperature units',
                ),
                trailing: Switch(
                  value: state.temperatureUnits.isCelsius,
                  onChanged: (_) => context.read<WeatherCubit>().toggleUnits(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
