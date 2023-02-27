import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('es')
  ];

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'TecnoNew365'**
  String get companyName;

  /// No description provided for @hellotag.
  ///
  /// In en, this message translates to:
  /// **'\'\'\'Hello, welcome to our space \'\'\''**
  String get hellotag;

  /// No description provided for @yourname.
  ///
  /// In en, this message translates to:
  /// **'We are TecnoNew365'**
  String get yourname;

  /// No description provided for @animationtxt1.
  ///
  /// In en, this message translates to:
  /// **' Mobile App Developers'**
  String get animationtxt1;

  /// No description provided for @animationtxt2.
  ///
  /// In en, this message translates to:
  /// **' UI/UX Designers'**
  String get animationtxt2;

  /// No description provided for @animationtxt3.
  ///
  /// In en, this message translates to:
  /// **'Web Developers'**
  String get animationtxt3;

  /// No description provided for @contactHeading.
  ///
  /// In en, this message translates to:
  /// **'Let\'s test our service now!'**
  String get contactHeading;

  /// No description provided for @contactSubHeading.
  ///
  /// In en, this message translates to:
  /// **'Let\'s work together and make everything super cute and super useful.'**
  String get contactSubHeading;

  /// No description provided for @miniDescription.
  ///
  /// In en, this message translates to:
  /// **'Independent company servicing programming and design content needs. Join us below and let\'s get started!'**
  String get miniDescription;

  /// No description provided for @servicesSubHeading.
  ///
  /// In en, this message translates to:
  /// **'Since the beginning of our journey as freelance designers and developers, we have worked on startups and collaborated with talented individuals to create digital products for consumer and commercial use. We offer a wide range of services, including brand design , programming and teaching.'**
  String get servicesSubHeading;

  /// No description provided for @protfolioSubHeading.
  ///
  /// In en, this message translates to:
  /// **'Since the beginning of our journey as designers and developers, I have created digital products for consumer and commercial use. This is quite a bit'**
  String get protfolioSubHeading;

  /// No description provided for @aboutMeHeadline.
  ///
  /// In en, this message translates to:
  /// **'We are TecnoNew365 , mobile app developers, web developers and UI designers.'**
  String get aboutMeHeadline;

  /// No description provided for @aboutMeDetail.
  ///
  /// In en, this message translates to:
  /// **'We are recent graduates as an engineer from the University of Informatics Sciences, Cuba. I have been developing mobile applications for more than 4 years. We have worked in teams for various startups and helped them launch their prototypes and gained valuable learning experience .'**
  String get aboutMeDetail;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
