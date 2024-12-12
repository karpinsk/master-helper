// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(serialNumber) => "Usuń element ${serialNumber}";

  static String m1(orderNumber, name) => "${orderNumber} ${name}";

  static String m2(serialNumber) =>
      "Rysunek elementu podrzędnego ${serialNumber} został pomyślnie dodany!";

  static String m3(serialNumber) =>
      "Informacje o elemencie podrzędnym ${serialNumber}";

  static String m4(serialNumber) =>
      "Zdjęcie elementu podrzędnego ${serialNumber} zostało pomyślnie dodane!";

  static String m5(serialNumber) => "Element podrzędny ${serialNumber}";

  static String m6(name) => "${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addDetail": MessageLookupByLibrary.simpleMessage("Dodaj zamówienie"),
        "addDrawing": MessageLookupByLibrary.simpleMessage("Dodaj rysunek"),
        "addNewSubDetail":
            MessageLookupByLibrary.simpleMessage("Dodaj nowy element"),
        "addNote": MessageLookupByLibrary.simpleMessage("Dodaj notatkę..."),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Dodaj zdjęcie"),
        "back": MessageLookupByLibrary.simpleMessage("Wstecz"),
        "camera": MessageLookupByLibrary.simpleMessage("Kamera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "codeEN": MessageLookupByLibrary.simpleMessage("en"),
        "codeKZ": MessageLookupByLibrary.simpleMessage("kz"),
        "codePL": MessageLookupByLibrary.simpleMessage("pl"),
        "codeRU": MessageLookupByLibrary.simpleMessage("ru"),
        "color": MessageLookupByLibrary.simpleMessage("Kolor"),
        "componentsOfDetail":
            MessageLookupByLibrary.simpleMessage("Komponenty elementu "),
        "darkTheme":
            MessageLookupByLibrary.simpleMessage("Ciemny motyw aplikacji"),
        "delete": MessageLookupByLibrary.simpleMessage("Usuń"),
        "deleteConfirmation":
            MessageLookupByLibrary.simpleMessage("Potwierdzenie usunięcia"),
        "deleteConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz usunąć ten element wraz ze wszystkimi komponentami podrzędnymi?"),
        "deleteDetail": MessageLookupByLibrary.simpleMessage("Usuń element"),
        "deleteSubDetailSerialNumber": m0,
        "detailName": MessageLookupByLibrary.simpleMessage("Nazwa elementu"),
        "detailTileText": m1,
        "details": MessageLookupByLibrary.simpleMessage("Szczegóły"),
        "detailsList": MessageLookupByLibrary.simpleMessage("Lista zamówień"),
        "drawing": MessageLookupByLibrary.simpleMessage("Rysunek"),
        "drawingAdded": MessageLookupByLibrary.simpleMessage(
            "Rysunek elementu został pomyślnie dodany!"),
        "drawingExpirationDate":
            MessageLookupByLibrary.simpleMessage("Data wygaśnięcia rysunku"),
        "drawingExpired": MessageLookupByLibrary.simpleMessage(
            "Rysunek elementu wygasł. Należy przedłużyć rysunek"),
        "drawingRemoved":
            MessageLookupByLibrary.simpleMessage("Rysunek został usunięty"),
        "drawingSoonExpiring": MessageLookupByLibrary.simpleMessage(
            "Do wygaśnięcia rysunku pozostało mniej niż 10 dni"),
        "edit": MessageLookupByLibrary.simpleMessage("Edytuj"),
        "editDetail": MessageLookupByLibrary.simpleMessage("Edytuj element"),
        "enterDetailName":
            MessageLookupByLibrary.simpleMessage("Wprowadź nazwę elementu"),
        "enterDrawingExpirationDate": MessageLookupByLibrary.simpleMessage(
            "Wprowadź datę wygaśnięcia rysunku"),
        "enterOrderNumber":
            MessageLookupByLibrary.simpleMessage("Wprowadź numer zamówienia"),
        "enterSubDetailName": MessageLookupByLibrary.simpleMessage(
            "Wprowadź nazwę elementu podrzędnego"),
        "errorLoadingDetails": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd podczas ładowania danych"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "imageNotAdded":
            MessageLookupByLibrary.simpleMessage("Zdjęcie nie zostało dodane"),
        "imageNotFound": MessageLookupByLibrary.simpleMessage(
            "Zdjęcie nie zostało znalezione"),
        "information": MessageLookupByLibrary.simpleMessage("Informacja"),
        "language": MessageLookupByLibrary.simpleMessage("Język"),
        "languageEN": MessageLookupByLibrary.simpleMessage("English"),
        "languageKZ": MessageLookupByLibrary.simpleMessage("Қазақ"),
        "languagePL": MessageLookupByLibrary.simpleMessage("Polski"),
        "languageRU": MessageLookupByLibrary.simpleMessage("Русский"),
        "noNotes": MessageLookupByLibrary.simpleMessage("Brak notatek"),
        "notes": MessageLookupByLibrary.simpleMessage("Notatki"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Numer zamówienia"),
        "photo": MessageLookupByLibrary.simpleMessage("Zdjęcie"),
        "photoAdded": MessageLookupByLibrary.simpleMessage(
            "Zdjęcie elementu zostało pomyślnie dodane!"),
        "photoRemoved":
            MessageLookupByLibrary.simpleMessage("Zdjęcie zostało usunięte"),
        "removeDrawing": MessageLookupByLibrary.simpleMessage("Usuń rysunek"),
        "removePhoto": MessageLookupByLibrary.simpleMessage("Usuń zdjęcie"),
        "replaceDrawing":
            MessageLookupByLibrary.simpleMessage("Zastąp rysunek"),
        "replacePhoto": MessageLookupByLibrary.simpleMessage("Zastąp zdjęcie"),
        "requiredFieldsEmpty": MessageLookupByLibrary.simpleMessage(
            "Wymagane pola dla elementu lub jego komponentów nie zostały wypełnione"),
        "save": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "searchByOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Szukaj po numerze zamówienia"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "startTypingOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Zacznij wpisywać numer zamówienia..."),
        "statusInProgress":
            MessageLookupByLibrary.simpleMessage("W trakcie realizacji"),
        "statusWaiting": MessageLookupByLibrary.simpleMessage("Oczekiwanie"),
        "subDetailDrawingAdded": m2,
        "subDetailInformation": m3,
        "subDetailPhotoAdded": m4,
        "subDetailSerialNumber": m5,
        "subDetailTileText": m6,
        "techProcess":
            MessageLookupByLibrary.simpleMessage("Proces technologiczny")
      };
}
