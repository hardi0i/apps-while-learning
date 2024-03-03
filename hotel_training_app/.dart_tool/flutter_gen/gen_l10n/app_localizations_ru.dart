import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get moreAboutTheRoom => 'Подробнее о номере';

  @override
  String get chooseANumber => 'Выбрать номер';

  @override
  String get mostNecessary => 'Самое необходимое';

  @override
  String get whatIsIncluded => 'Что включено';

  @override
  String get conveniences => 'Удобства';

  @override
  String get aboutTheHotel => 'Об отеле';

  @override
  String get toChooseARoom => 'К выбору номера';

  @override
  String get hotel => 'Отель';

  @override
  String fromNRub(String amount) {
    return 'от $amount ₽';
  }

  @override
  String get informationAboutTheBuyer => 'Информация о покупателе';

  @override
  String get phoneNumber => 'Номер телефона';

  @override
  String get eMail => 'Почта';

  @override
  String get securityInformation => 'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту';

  @override
  String get maximumNumberOfTouristsForReservation => 'Достигнуто максимальное количество туристов для 1 бронирования';

  @override
  String get departureFrom => 'Вылет из';

  @override
  String get countryCity => 'Страна, город';

  @override
  String get dates => 'Даты';

  @override
  String get numberOfNights => 'Кол-во ночей';

  @override
  String get room => 'Номер';

  @override
  String get nutrition => 'Питание';

  @override
  String get addATourist => 'Добавить туриста';

  @override
  String get tour => 'Тур';

  @override
  String get fuelFee => 'Топливный сбор';

  @override
  String get serviceFee => 'Сервисный сбор';

  @override
  String get toBePaid => 'К оплате';

  @override
  String get booking => 'Бронирование';

  @override
  String payNRub(String amount) {
    return 'Оплатить $amount ₽';
  }

  @override
  String get labelTextForName => 'Имя';

  @override
  String get labelTextForSurname => 'Фамилия';

  @override
  String get labelTextForBirthdate => 'Дата рождения';

  @override
  String get hintTextForBirthdate => 'ДД.ММ.ГГГГ';

  @override
  String get labelTextForCitizenship => 'Гражданство';

  @override
  String get labelForPassportNubmer => 'Номер загранпаспорта';

  @override
  String get labelForPassportEndsDate => 'Срок действия загранпаспорта';

  @override
  String get hintTextForPassportEndsDate => 'ММ.ГГГГ';

  @override
  String get firstTourist => 'Первый турист';

  @override
  String get secondTourist => 'Второй турист';

  @override
  String get thirdTourist => 'Третий турист';

  @override
  String get fourthTourist => 'Четвертый турист';

  @override
  String get tooManyTourists => 'Слишком много туристов';

  @override
  String get orderHasBeenPaid => 'Заказ оплачен';

  @override
  String get yourOrderHasBeenAccepted => 'Ваш заказ принят в работу';

  @override
  String orderConfirmationInformation(String nubmerOfOrder) {
    return 'Подтверждение заказа №$nubmerOfOrder может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.';
  }

  @override
  String get great => 'Супер!';

  @override
  String get houstonWeDontSeeYou => 'Хьюстон, не видим вас';

  @override
  String get problemsWithMobileInternetOrWiFi => 'Судя по всему, у вас проблемы с мобильным интернетом или Wi-Fi';

  @override
  String get close => 'Закрыть';
}
