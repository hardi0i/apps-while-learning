import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get moreAboutTheRoom => 'More about the room';

  @override
  String get chooseANumber => 'Choose a number';

  @override
  String get mostNecessary => 'The most necessary';

  @override
  String get whatIsIncluded => 'What is included';

  @override
  String get conveniences => 'Conveniences';

  @override
  String get aboutTheHotel => 'About the hotel';

  @override
  String get toChooseARoom => 'To choose a room';

  @override
  String get hotel => 'Hotel';

  @override
  String fromNRub(String amount) {
    return 'from $amount ₽';
  }

  @override
  String get informationAboutTheBuyer => 'Information about the buyer';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get eMail => 'E-Mail';

  @override
  String get securityInformation => 'This data is not shared with anyone. After payment, we will send the receipt to the number and email you specified';

  @override
  String get maximumNumberOfTouristsForReservation => 'The maximum number of tourists for 1 booking has been reached';

  @override
  String get departureFrom => 'Departure from';

  @override
  String get countryCity => 'Country, city';

  @override
  String get dates => 'Dates';

  @override
  String get numberOfNights => 'Number of nights';

  @override
  String get room => 'Room';

  @override
  String get nutrition => 'Nutrition';

  @override
  String get addATourist => 'Add a tourist';

  @override
  String get tour => 'Tour';

  @override
  String get fuelFee => 'Fuel fee';

  @override
  String get serviceFee => 'Service fee';

  @override
  String get toBePaid => 'To be paid';

  @override
  String get booking => 'Booking';

  @override
  String payNRub(String amount) {
    return 'To pay $amount ₽';
  }

  @override
  String get labelTextForName => 'Name';

  @override
  String get labelTextForSurname => 'Surname';

  @override
  String get labelTextForBirthdate => 'Birthdate';

  @override
  String get hintTextForBirthdate => 'DD.MM.YYYY';

  @override
  String get labelTextForCitizenship => 'Citizenship';

  @override
  String get labelForPassportNubmer => 'Passport number';

  @override
  String get labelForPassportEndsDate => 'The validity period of the passport';

  @override
  String get hintTextForPassportEndsDate => 'MM.YYYY';

  @override
  String get firstTourist => 'First tourist';

  @override
  String get secondTourist => 'Second tourist';

  @override
  String get thirdTourist => 'Third tourist';

  @override
  String get fourthTourist => 'Fourth tourist';

  @override
  String get tooManyTourists => 'Too many tourists';

  @override
  String get orderHasBeenPaid => 'The order has been paid';

  @override
  String get yourOrderHasBeenAccepted => 'Your order has been accepted';

  @override
  String orderConfirmationInformation(String nubmerOfOrder) {
    return 'Order confirmation No.$nubmerOfOrder may take some time (from 1 hour to a day). As soon as we receive a response from the tour operator, a notification will be sent to your email.';
  }

  @override
  String get great => 'Super!';

  @override
  String get houstonWeDontSeeYou => 'Houston, we don\'t see you';

  @override
  String get problemsWithMobileInternetOrWiFi => 'Apparently, you have problems with mobile Internet or Wi-Fi';

  @override
  String get close => 'Close';
}
