import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get access_to_location_denied => "Access to location denied";
  String get allow_access_to_the_location_services => "Allow access to the location services.";
  String get cant_get_current_location => "Can't get current location";
  String get ok => "Ok";
  String get please_check_your_connection => "Please check your connection";
  String get please_make_sure_you_enable_gps_and_try_again => "Please make sure you enable GPS and try again";
  String get search_place => "Search place";
  String get server_error => "Server error";
}

class $ar extends S {
  const $ar();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get cant_get_current_location => "لا يمكن الحصول علي الموقع الجغرافي الحالي";
  @override
  String get access_to_location_denied => "تم رفض إذن الوصل الي الموقع الجغرافي";
  @override
  String get allow_access_to_the_location_services => "من فضلك قم بقبول إذن الوصول الي الموقع الجغرافي";
  @override
  String get server_error => "خطأ من الخادم حاول مرة اخري";
  @override
  String get search_place => "إبحث بإسم المكان";
  @override
  String get ok => "حسنا";
  @override
  String get please_check_your_connection => "تأكد من وجود انترنت";
  @override
  String get please_make_sure_you_enable_gps_and_try_again => "الرجاء التاكد من تفعيل الGPS و المحاولة مرة أخري";
}

class $en extends S {
  const $en();
}

class $tr extends S {
  const $tr();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get cant_get_current_location => "Geçerli konum alınamıyor";
  @override
  String get access_to_location_denied => "Konum erişimi reddedildi";
  @override
  String get allow_access_to_the_location_services => "Konum servislerine izin verin.";
  @override
  String get server_error => "Sunucu hatası";
  @override
  String get search_place => "Konum ara";
  @override
  String get ok => "Tamam";
  @override
  String get please_check_your_connection => "Lütfen bağlantınızı kontrol edin";
  @override
  String get please_make_sure_you_enable_gps_and_try_again => "Lütfen GPS’i etkinleştirin ve tekrar deneyin.";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("ar", ""),
      Locale("en", ""),
      Locale("tr", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "ar":
          S.current = const $ar();
          return SynchronousFuture<S>(S.current);
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        case "tr":
          S.current = const $tr();
          return SynchronousFuture<S>(S.current);
        default:
          // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
