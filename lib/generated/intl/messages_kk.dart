// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a kk locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'kk';

  static String m0(serialNumber) => "Қосалқы бөлшекті жою ${serialNumber}";

  static String m1(orderNumber, name) => "${orderNumber} ${name}";

  static String m2(serialNumber) =>
      "Қосалқы бөлшектің сызбасы ${serialNumber} сәтті қосылды!";

  static String m3(serialNumber) =>
      "Қосалқы бөлшек туралы ақпарат ${serialNumber}";

  static String m4(serialNumber) =>
      "Қосалқы бөлшектің фотосуреті ${serialNumber} сәтті қосылды!";

  static String m5(serialNumber) => "Қосалқы бөлшек ${serialNumber}";

  static String m6(name) => "${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addDetail": MessageLookupByLibrary.simpleMessage("Бөлшекті қосу"),
        "addDrawing": MessageLookupByLibrary.simpleMessage("Сызбаны қосу"),
        "addNewSubDetail": MessageLookupByLibrary.simpleMessage("Жаңа бөлшек"),
        "addNote": MessageLookupByLibrary.simpleMessage("Белгіні қосу..."),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Фотосуретті қосу"),
        "back": MessageLookupByLibrary.simpleMessage("Артқа"),
        "camera": MessageLookupByLibrary.simpleMessage("Камера"),
        "cancel": MessageLookupByLibrary.simpleMessage("Бас тарту"),
        "codeEN": MessageLookupByLibrary.simpleMessage("en"),
        "codeKZ": MessageLookupByLibrary.simpleMessage("kz"),
        "codePL": MessageLookupByLibrary.simpleMessage("pl"),
        "codeRU": MessageLookupByLibrary.simpleMessage("ru"),
        "color": MessageLookupByLibrary.simpleMessage("Түс"),
        "componentsOfDetail":
            MessageLookupByLibrary.simpleMessage("Бөлшектің компоненттері "),
        "darkTheme":
            MessageLookupByLibrary.simpleMessage("Қосымшаның қараңғы тақырыбы"),
        "delete": MessageLookupByLibrary.simpleMessage("Жою"),
        "deleteConfirmation":
            MessageLookupByLibrary.simpleMessage("Жоюды растау"),
        "deleteConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Бұл бөлшекті барлық қосалқы бөлшектерімен бірге жойғыңыз келетініне сенімдісіз бе?"),
        "deleteDetail": MessageLookupByLibrary.simpleMessage("Бөлшекті жою"),
        "deleteSubDetailSerialNumber": m0,
        "detailColors":
            MessageLookupByLibrary.simpleMessage("Бөлшек күйінің белгіленуі"),
        "detailName": MessageLookupByLibrary.simpleMessage("Бөлшек атауы"),
        "detailTileText": m1,
        "detailType": MessageLookupByLibrary.simpleMessage("Бөлшек түрі"),
        "details": MessageLookupByLibrary.simpleMessage("Бөлшектер"),
        "detailsList": MessageLookupByLibrary.simpleMessage("Бөлшектер тізімі"),
        "drawing": MessageLookupByLibrary.simpleMessage("Сызба"),
        "drawingAdded": MessageLookupByLibrary.simpleMessage(
            "Бөлшектің сызбасы сәтті қосылды!"),
        "drawingExpirationDate":
            MessageLookupByLibrary.simpleMessage("Сызбаның жарамдылық мерзімі"),
        "drawingExpired": MessageLookupByLibrary.simpleMessage(
            "Бөлшектің сызбасының мерзімі өткен. Сызбаны ұзарту қажет"),
        "drawingRemoved": MessageLookupByLibrary.simpleMessage("Сызба жойылды"),
        "drawingSoonExpiring": MessageLookupByLibrary.simpleMessage(
            "Сызбаның аяқталуына 10 күннен аз уақыт қалды"),
        "edit": MessageLookupByLibrary.simpleMessage("Өңдеу"),
        "editDetail": MessageLookupByLibrary.simpleMessage("Бөлшекті өңдеу"),
        "enterDetailName":
            MessageLookupByLibrary.simpleMessage("Бөлшектің атауын енгізіңіз"),
        "enterDrawingExpirationDate": MessageLookupByLibrary.simpleMessage(
            "Сызбаның жарамдылық мерзімін енгізіңіз"),
        "enterOrderNumber":
            MessageLookupByLibrary.simpleMessage("Тапсырыс нөмірін енгізіңіз"),
        "enterSubDetailName": MessageLookupByLibrary.simpleMessage(
            "Қосалқы бөлшектің атауын енгізіңіз"),
        "errorLoadingDetails": MessageLookupByLibrary.simpleMessage(
            "Деректерді жүктеу кезінде қате пайда болды"),
        "gallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "imageNotAdded":
            MessageLookupByLibrary.simpleMessage("Фотосурет қосылмады"),
        "imageNotFound":
            MessageLookupByLibrary.simpleMessage("Фотосурет табылмады"),
        "information": MessageLookupByLibrary.simpleMessage("Ақпарат"),
        "language": MessageLookupByLibrary.simpleMessage("Тіл"),
        "languageEN": MessageLookupByLibrary.simpleMessage("English"),
        "languageKZ": MessageLookupByLibrary.simpleMessage("Қазақ"),
        "languagePL": MessageLookupByLibrary.simpleMessage("Polski"),
        "languageRU": MessageLookupByLibrary.simpleMessage("Русский"),
        "noNotes": MessageLookupByLibrary.simpleMessage("Ескертулер жоқ"),
        "notes": MessageLookupByLibrary.simpleMessage("Ескертулер"),
        "ok": MessageLookupByLibrary.simpleMessage("ОК"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Тапсырыс нөмірі"),
        "photo": MessageLookupByLibrary.simpleMessage("Фотосурет"),
        "photoAdded": MessageLookupByLibrary.simpleMessage(
            "Бөлшектің фотосуреті сәтті қосылды!"),
        "photoRemoved":
            MessageLookupByLibrary.simpleMessage("Фотосурет жойылды"),
        "removeDrawing": MessageLookupByLibrary.simpleMessage("Сызбаны жою"),
        "removePhoto": MessageLookupByLibrary.simpleMessage("Фотосуретті жою"),
        "replaceDrawing":
            MessageLookupByLibrary.simpleMessage("Сызбаны ауыстыру"),
        "replacePhoto":
            MessageLookupByLibrary.simpleMessage("Фотосуретті ауыстыру"),
        "requiredFieldsEmpty": MessageLookupByLibrary.simpleMessage(
            "Бөлшек немесе қосалқы бөлшектер үшін міндетті өрістер толтырылмаған"),
        "save": MessageLookupByLibrary.simpleMessage("Сақтау"),
        "searchByOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Тапсырыс нөмірі бойынша іздеу"),
        "settings": MessageLookupByLibrary.simpleMessage("Баптау"),
        "startTypingOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Тапсырыс нөмірін енгізуді бастаңыз..."),
        "statusInProgress": MessageLookupByLibrary.simpleMessage("Жұмыста"),
        "statusWaiting": MessageLookupByLibrary.simpleMessage("Күту"),
        "subDetailDrawingAdded": m2,
        "subDetailInformation": m3,
        "subDetailPhotoAdded": m4,
        "subDetailSerialNumber": m5,
        "subDetailTileText": m6,
        "techProcess":
            MessageLookupByLibrary.simpleMessage("Технологиялық үдерісi")
      };
}
