import 'package:hotel_app_for_sobes/feature/booking/data/model/order.dart';
import 'package:hotel_app_for_sobes/feature/booking/data/remapper/tourist_remapper.dart';
import 'package:hotel_app_for_sobes/feature/booking/domain/entities/order.dart';

class OrderRemapper {
  OrderRemapper(this._touristRemapper);

  final TouristRemapper _touristRemapper;

  OrderEntity fromModel(OrderModel orderModel) {
    return OrderEntity(
      hotelId: orderModel.hotelId,
      email: orderModel.email,
      phone: orderModel.phone,
      roomId: orderModel.roomId,
      tourists: orderModel.tourists
          .map(
            (tourist) => _touristRemapper.fromModel(tourist),
          )
          .toList(),
    );
  }

  OrderModel toModel(OrderEntity orderEntity) {
    return OrderModel(
      hotelId: orderEntity.hotelId,
      roomId: orderEntity.roomId,
      email: orderEntity.email,
      phone: orderEntity.phone,
      tourists: orderEntity.tourists
          .map(
            (tourist) => _touristRemapper.toModel(tourist),
          )
          .toList(),
    );
  }
}
