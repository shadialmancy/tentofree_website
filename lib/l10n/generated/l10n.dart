// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `EN`
  String get en {
    return Intl.message(
      'EN',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `AR`
  String get ar {
    return Intl.message(
      'AR',
      name: 'ar',
      desc: '',
      args: [],
    );
  }

  /// `Join Now`
  String get joinNow {
    return Intl.message(
      'Join Now',
      name: 'joinNow',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to exit the app?`
  String get doUWantToExitTheApp {
    return Intl.message(
      'Do you want to exit the app?',
      name: 'doUWantToExitTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `How Does it Work`
  String get howDoesItWork {
    return Intl.message(
      'How Does it Work',
      name: 'howDoesItWork',
      desc: '',
      args: [],
    );
  }

  /// `Download tentofree app`
  String get downloadTentofreeApp {
    return Intl.message(
      'Download tentofree app',
      name: 'downloadTentofreeApp',
      desc: '',
      args: [],
    );
  }

  /// `Go to your favourite store`
  String get goToYourFavouriteStore {
    return Intl.message(
      'Go to your favourite store',
      name: 'goToYourFavouriteStore',
      desc: '',
      args: [],
    );
  }

  /// `Share with your community`
  String get shareWithYourCommunity {
    return Intl.message(
      'Share with your community',
      name: 'shareWithYourCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Save & get your discount`
  String get saveAndGetYourDiscount {
    return Intl.message(
      'Save & get your discount',
      name: 'saveAndGetYourDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Helping Business to grow and expand`
  String get helpingBusinessToGrowAndExpand {
    return Intl.message(
      'Helping Business to grow and expand',
      name: 'helpingBusinessToGrowAndExpand',
      desc: '',
      args: [],
    );
  }

  /// `Pack`
  String get pack {
    return Intl.message(
      'Pack',
      name: 'pack',
      desc: '',
      args: [],
    );
  }

  /// `Voucher`
  String get voucher {
    return Intl.message(
      'Voucher',
      name: 'voucher',
      desc: '',
      args: [],
    );
  }

  /// `Vendor`
  String get vendor {
    return Intl.message(
      'Vendor',
      name: 'vendor',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `About tentofree`
  String get aboutTentofree {
    return Intl.message(
      'About tentofree',
      name: 'aboutTentofree',
      desc: '',
      args: [],
    );
  }

  /// `Security & Privacy`
  String get securityAndPrivacy {
    return Intl.message(
      'Security & Privacy',
      name: 'securityAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Press & media`
  String get pressAndMedia {
    return Intl.message(
      'Press & media',
      name: 'pressAndMedia',
      desc: '',
      args: [],
    );
  }

  /// `Work with us`
  String get workWithUs {
    return Intl.message(
      'Work with us',
      name: 'workWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Carrers`
  String get carrers {
    return Intl.message(
      'Carrers',
      name: 'carrers',
      desc: '',
      args: [],
    );
  }

  /// `Become a partner`
  String get becomePartner {
    return Intl.message(
      'Become a partner',
      name: 'becomePartner',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Legal`
  String get legal {
    return Intl.message(
      'Legal',
      name: 'legal',
      desc: '',
      args: [],
    );
  }

  /// `End user Agreement`
  String get endUserAgreement {
    return Intl.message(
      'End user Agreement',
      name: 'endUserAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Term of sale`
  String get termOfSale {
    return Intl.message(
      'Term of sale',
      name: 'termOfSale',
      desc: '',
      args: [],
    );
  }

  /// `Our Terms`
  String get ourTerms {
    return Intl.message(
      'Our Terms',
      name: 'ourTerms',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Get in touch`
  String get getInTouch {
    return Intl.message(
      'Get in touch',
      name: 'getInTouch',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get FAQs {
    return Intl.message(
      'FAQs',
      name: 'FAQs',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Help center`
  String get helpCenter {
    return Intl.message(
      'Help center',
      name: 'helpCenter',
      desc: '',
      args: [],
    );
  }

  /// `Submit a Request`
  String get submitRequest {
    return Intl.message(
      'Submit a Request',
      name: 'submitRequest',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name`
  String get enterYourFirstName {
    return Intl.message(
      'Enter your first name',
      name: 'enterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enterYourLastName {
    return Intl.message(
      'Enter your last name',
      name: 'enterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email {
    return Intl.message(
      'Email address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email address',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Enter your country`
  String get enterYourCountry {
    return Intl.message(
      'Enter your country',
      name: 'enterYourCountry',
      desc: '',
      args: [],
    );
  }

  /// `Choose a request type`
  String get chooseRequestType {
    return Intl.message(
      'Choose a request type',
      name: 'chooseRequestType',
      desc: '',
      args: [],
    );
  }

  /// `Select your request type`
  String get selectRequestType {
    return Intl.message(
      'Select your request type',
      name: 'selectRequestType',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Enter subject describe your inquiry`
  String get enterSubjectDescribeYourInquiry {
    return Intl.message(
      'Enter subject describe your inquiry',
      name: 'enterSubjectDescribeYourInquiry',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Discuss your inquiry`
  String get discussYourInquiry {
    return Intl.message(
      'Discuss your inquiry',
      name: 'discussYourInquiry',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
