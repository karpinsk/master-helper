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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Add detail`
  String get addDetail {
    return Intl.message(
      'Add detail',
      name: 'addDetail',
      desc: '',
      args: [],
    );
  }

  /// `Add note...`
  String get addNote {
    return Intl.message(
      'Add note...',
      name: 'addNote',
      desc: '',
      args: [],
    );
  }

  /// `Add drawing`
  String get addDrawing {
    return Intl.message(
      'Add drawing',
      name: 'addDrawing',
      desc: '',
      args: [],
    );
  }

  /// `Add new subdetail`
  String get addNewSubDetail {
    return Intl.message(
      'Add new subdetail',
      name: 'addNewSubDetail',
      desc: '',
      args: [],
    );
  }

  /// `Add photo`
  String get addPhoto {
    return Intl.message(
      'Add photo',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get codeEN {
    return Intl.message(
      'en',
      name: 'codeEN',
      desc: '',
      args: [],
    );
  }

  /// `kz`
  String get codeKZ {
    return Intl.message(
      'kz',
      name: 'codeKZ',
      desc: '',
      args: [],
    );
  }

  /// `pl`
  String get codePL {
    return Intl.message(
      'pl',
      name: 'codePL',
      desc: '',
      args: [],
    );
  }

  /// `ru`
  String get codeRU {
    return Intl.message(
      'ru',
      name: 'codeRU',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Components of `
  String get componentsOfDetail {
    return Intl.message(
      'Components of ',
      name: 'componentsOfDetail',
      desc: '',
      args: [],
    );
  }

  /// `Dark theme`
  String get darkTheme {
    return Intl.message(
      'Dark theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Delete confirmation`
  String get deleteConfirmation {
    return Intl.message(
      'Delete confirmation',
      name: 'deleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `This detail and all it's subdetails will be deleted`
  String get deleteConfirmationMessage {
    return Intl.message(
      'This detail and all it\'s subdetails will be deleted',
      name: 'deleteConfirmationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Delete subdetail {serialNumber}`
  String deleteSubDetailSerialNumber(Object serialNumber) {
    return Intl.message(
      'Delete subdetail $serialNumber',
      name: 'deleteSubDetailSerialNumber',
      desc: '',
      args: [serialNumber],
    );
  }

  /// `Delete details`
  String get deleteDetail {
    return Intl.message(
      'Delete details',
      name: 'deleteDetail',
      desc: '',
      args: [],
    );
  }

  /// `Detail type colors`
  String get detailColors {
    return Intl.message(
      'Detail type colors',
      name: 'detailColors',
      desc: '',
      args: [],
    );
  }

  /// `Detail name`
  String get detailName {
    return Intl.message(
      'Detail name',
      name: 'detailName',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `List of details`
  String get detailsList {
    return Intl.message(
      'List of details',
      name: 'detailsList',
      desc: '',
      args: [],
    );
  }

  /// `{orderNumber} {name}`
  String detailTileText(Object orderNumber, Object name) {
    return Intl.message(
      '$orderNumber $name',
      name: 'detailTileText',
      desc: '',
      args: [orderNumber, name],
    );
  }

  /// `Detail type`
  String get detailType {
    return Intl.message(
      'Detail type',
      name: 'detailType',
      desc: '',
      args: [],
    );
  }

  /// `Drawing`
  String get drawing {
    return Intl.message(
      'Drawing',
      name: 'drawing',
      desc: '',
      args: [],
    );
  }

  /// `Drawing is successfully added!`
  String get drawingAdded {
    return Intl.message(
      'Drawing is successfully added!',
      name: 'drawingAdded',
      desc: '',
      args: [],
    );
  }

  /// `Drawing expiration date`
  String get drawingExpirationDate {
    return Intl.message(
      'Drawing expiration date',
      name: 'drawingExpirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Drawing is expired`
  String get drawingExpired {
    return Intl.message(
      'Drawing is expired',
      name: 'drawingExpired',
      desc: '',
      args: [],
    );
  }

  /// `Drawing removed`
  String get drawingRemoved {
    return Intl.message(
      'Drawing removed',
      name: 'drawingRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Drawing will expire in less than 10 days`
  String get drawingSoonExpiring {
    return Intl.message(
      'Drawing will expire in less than 10 days',
      name: 'drawingSoonExpiring',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Edit detail`
  String get editDetail {
    return Intl.message(
      'Edit detail',
      name: 'editDetail',
      desc: '',
      args: [],
    );
  }

  /// `Enter detail name`
  String get enterDetailName {
    return Intl.message(
      'Enter detail name',
      name: 'enterDetailName',
      desc: '',
      args: [],
    );
  }

  /// `Enter drawing expiration date`
  String get enterDrawingExpirationDate {
    return Intl.message(
      'Enter drawing expiration date',
      name: 'enterDrawingExpirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Enter order number`
  String get enterOrderNumber {
    return Intl.message(
      'Enter order number',
      name: 'enterOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter subdetail name`
  String get enterSubDetailName {
    return Intl.message(
      'Enter subdetail name',
      name: 'enterSubDetailName',
      desc: '',
      args: [],
    );
  }

  /// `Error loading details`
  String get errorLoadingDetails {
    return Intl.message(
      'Error loading details',
      name: 'errorLoadingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Image was not added`
  String get imageNotAdded {
    return Intl.message(
      'Image was not added',
      name: 'imageNotAdded',
      desc: '',
      args: [],
    );
  }

  /// `Image not found`
  String get imageNotFound {
    return Intl.message(
      'Image not found',
      name: 'imageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
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

  /// `English`
  String get languageEN {
    return Intl.message(
      'English',
      name: 'languageEN',
      desc: '',
      args: [],
    );
  }

  /// `Қазақ`
  String get languageKZ {
    return Intl.message(
      'Қазақ',
      name: 'languageKZ',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get languageRU {
    return Intl.message(
      'Русский',
      name: 'languageRU',
      desc: '',
      args: [],
    );
  }

  /// `Polski`
  String get languagePL {
    return Intl.message(
      'Polski',
      name: 'languagePL',
      desc: '',
      args: [],
    );
  }

  /// `No notes`
  String get noNotes {
    return Intl.message(
      'No notes',
      name: 'noNotes',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Order number`
  String get orderNumber {
    return Intl.message(
      'Order number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Photo`
  String get photo {
    return Intl.message(
      'Photo',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `Photo is successfully added!`
  String get photoAdded {
    return Intl.message(
      'Photo is successfully added!',
      name: 'photoAdded',
      desc: '',
      args: [],
    );
  }

  /// `Photo removed`
  String get photoRemoved {
    return Intl.message(
      'Photo removed',
      name: 'photoRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Drawing was removed`
  String get removeDrawing {
    return Intl.message(
      'Drawing was removed',
      name: 'removeDrawing',
      desc: '',
      args: [],
    );
  }

  /// `Photo was removed`
  String get removePhoto {
    return Intl.message(
      'Photo was removed',
      name: 'removePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Replace drawing`
  String get replaceDrawing {
    return Intl.message(
      'Replace drawing',
      name: 'replaceDrawing',
      desc: '',
      args: [],
    );
  }

  /// `Replace photo`
  String get replacePhoto {
    return Intl.message(
      'Replace photo',
      name: 'replacePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Required fields for detail or subdetails are not filled`
  String get requiredFieldsEmpty {
    return Intl.message(
      'Required fields for detail or subdetails are not filled',
      name: 'requiredFieldsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Search by order number`
  String get searchByOrderNumber {
    return Intl.message(
      'Search by order number',
      name: 'searchByOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Start typing order number...`
  String get startTypingOrderNumber {
    return Intl.message(
      'Start typing order number...',
      name: 'startTypingOrderNumber',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get statusInProgress {
    return Intl.message(
      'In progress',
      name: 'statusInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get statusWaiting {
    return Intl.message(
      'Waiting',
      name: 'statusWaiting',
      desc: '',
      args: [],
    );
  }

  /// `Drawing of {serialNumber} is successfully added`
  String subDetailDrawingAdded(Object serialNumber) {
    return Intl.message(
      'Drawing of $serialNumber is successfully added',
      name: 'subDetailDrawingAdded',
      desc: '',
      args: [serialNumber],
    );
  }

  /// `Subdetail {serialNumber} information`
  String subDetailInformation(Object serialNumber) {
    return Intl.message(
      'Subdetail $serialNumber information',
      name: 'subDetailInformation',
      desc: '',
      args: [serialNumber],
    );
  }

  /// `Subdetail {serialNumber} photo`
  String subDetailPhotoAdded(Object serialNumber) {
    return Intl.message(
      'Subdetail $serialNumber photo',
      name: 'subDetailPhotoAdded',
      desc: '',
      args: [serialNumber],
    );
  }

  /// `Subdetail {serialNumber}`
  String subDetailSerialNumber(Object serialNumber) {
    return Intl.message(
      'Subdetail $serialNumber',
      name: 'subDetailSerialNumber',
      desc: '',
      args: [serialNumber],
    );
  }

  /// `{name}`
  String subDetailTileText(Object name) {
    return Intl.message(
      '$name',
      name: 'subDetailTileText',
      desc: '',
      args: [name],
    );
  }

  /// `Technological process`
  String get techProcess {
    return Intl.message(
      'Technological process',
      name: 'techProcess',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kk'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
