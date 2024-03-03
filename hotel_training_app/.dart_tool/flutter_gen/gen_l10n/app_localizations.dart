import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @moreAboutTheRoom.
  ///
  /// In en, this message translates to:
  /// **'More about the room'**
  String get moreAboutTheRoom;

  /// No description provided for @chooseANumber.
  ///
  /// In en, this message translates to:
  /// **'Choose a number'**
  String get chooseANumber;

  /// No description provided for @mostNecessary.
  ///
  /// In en, this message translates to:
  /// **'The most necessary'**
  String get mostNecessary;

  /// No description provided for @whatIsIncluded.
  ///
  /// In en, this message translates to:
  /// **'What is included'**
  String get whatIsIncluded;

  /// No description provided for @conveniences.
  ///
  /// In en, this message translates to:
  /// **'Conveniences'**
  String get conveniences;

  /// No description provided for @aboutTheHotel.
  ///
  /// In en, this message translates to:
  /// **'About the hotel'**
  String get aboutTheHotel;

  /// No description provided for @toChooseARoom.
  ///
  /// In en, this message translates to:
  /// **'To choose a room'**
  String get toChooseARoom;

  /// No description provided for @hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get hotel;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'from {amount} ₽'**
  String fromNRub(String amount);

  /// No description provided for @informationAboutTheBuyer.
  ///
  /// In en, this message translates to:
  /// **'Information about the buyer'**
  String get informationAboutTheBuyer;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @eMail.
  ///
  /// In en, this message translates to:
  /// **'E-Mail'**
  String get eMail;

  /// No description provided for @securityInformation.
  ///
  /// In en, this message translates to:
  /// **'This data is not shared with anyone. After payment, we will send the receipt to the number and email you specified'**
  String get securityInformation;

  /// No description provided for @maximumNumberOfTouristsForReservation.
  ///
  /// In en, this message translates to:
  /// **'The maximum number of tourists for 1 booking has been reached'**
  String get maximumNumberOfTouristsForReservation;

  /// No description provided for @departureFrom.
  ///
  /// In en, this message translates to:
  /// **'Departure from'**
  String get departureFrom;

  /// No description provided for @countryCity.
  ///
  /// In en, this message translates to:
  /// **'Country, city'**
  String get countryCity;

  /// No description provided for @dates.
  ///
  /// In en, this message translates to:
  /// **'Dates'**
  String get dates;

  /// No description provided for @numberOfNights.
  ///
  /// In en, this message translates to:
  /// **'Number of nights'**
  String get numberOfNights;

  /// No description provided for @room.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get room;

  /// No description provided for @nutrition.
  ///
  /// In en, this message translates to:
  /// **'Nutrition'**
  String get nutrition;

  /// No description provided for @addATourist.
  ///
  /// In en, this message translates to:
  /// **'Add a tourist'**
  String get addATourist;

  /// No description provided for @tour.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get tour;

  /// No description provided for @fuelFee.
  ///
  /// In en, this message translates to:
  /// **'Fuel fee'**
  String get fuelFee;

  /// No description provided for @serviceFee.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get serviceFee;

  /// No description provided for @toBePaid.
  ///
  /// In en, this message translates to:
  /// **'To be paid'**
  String get toBePaid;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'To pay {amount} ₽'**
  String payNRub(String amount);

  /// No description provided for @labelTextForName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get labelTextForName;

  /// No description provided for @labelTextForSurname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get labelTextForSurname;

  /// No description provided for @labelTextForBirthdate.
  ///
  /// In en, this message translates to:
  /// **'Birthdate'**
  String get labelTextForBirthdate;

  /// No description provided for @hintTextForBirthdate.
  ///
  /// In en, this message translates to:
  /// **'DD.MM.YYYY'**
  String get hintTextForBirthdate;

  /// No description provided for @labelTextForCitizenship.
  ///
  /// In en, this message translates to:
  /// **'Citizenship'**
  String get labelTextForCitizenship;

  /// No description provided for @labelForPassportNubmer.
  ///
  /// In en, this message translates to:
  /// **'Passport number'**
  String get labelForPassportNubmer;

  /// No description provided for @labelForPassportEndsDate.
  ///
  /// In en, this message translates to:
  /// **'The validity period of the passport'**
  String get labelForPassportEndsDate;

  /// No description provided for @hintTextForPassportEndsDate.
  ///
  /// In en, this message translates to:
  /// **'MM.YYYY'**
  String get hintTextForPassportEndsDate;

  /// No description provided for @firstTourist.
  ///
  /// In en, this message translates to:
  /// **'First tourist'**
  String get firstTourist;

  /// No description provided for @secondTourist.
  ///
  /// In en, this message translates to:
  /// **'Second tourist'**
  String get secondTourist;

  /// No description provided for @thirdTourist.
  ///
  /// In en, this message translates to:
  /// **'Third tourist'**
  String get thirdTourist;

  /// No description provided for @fourthTourist.
  ///
  /// In en, this message translates to:
  /// **'Fourth tourist'**
  String get fourthTourist;

  /// No description provided for @tooManyTourists.
  ///
  /// In en, this message translates to:
  /// **'Too many tourists'**
  String get tooManyTourists;

  /// No description provided for @orderHasBeenPaid.
  ///
  /// In en, this message translates to:
  /// **'The order has been paid'**
  String get orderHasBeenPaid;

  /// No description provided for @yourOrderHasBeenAccepted.
  ///
  /// In en, this message translates to:
  /// **'Your order has been accepted'**
  String get yourOrderHasBeenAccepted;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'Order confirmation No.{nubmerOfOrder} may take some time (from 1 hour to a day). As soon as we receive a response from the tour operator, a notification will be sent to your email.'**
  String orderConfirmationInformation(String nubmerOfOrder);

  /// No description provided for @great.
  ///
  /// In en, this message translates to:
  /// **'Super!'**
  String get great;

  /// No description provided for @houstonWeDontSeeYou.
  ///
  /// In en, this message translates to:
  /// **'Houston, we don\'t see you'**
  String get houstonWeDontSeeYou;

  /// No description provided for @problemsWithMobileInternetOrWiFi.
  ///
  /// In en, this message translates to:
  /// **'Apparently, you have problems with mobile Internet or Wi-Fi'**
  String get problemsWithMobileInternetOrWiFi;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
