// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(serialNumber) => "Delete subdetail ${serialNumber}";

  static String m1(orderNumber, name) => "${orderNumber} ${name}";

  static String m2(serialNumber) =>
      "Drawing of ${serialNumber} is successfully added";

  static String m3(serialNumber) => "Subdetail ${serialNumber} information";

  static String m4(serialNumber) => "Subdetail ${serialNumber} photo";

  static String m5(serialNumber) => "Subdetail ${serialNumber}";

  static String m6(name) => "${name}";

  static String m7(serialNumber) => "SubDetail ${serialNumber} type";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addDetail": MessageLookupByLibrary.simpleMessage("Add detail"),
        "addDrawing": MessageLookupByLibrary.simpleMessage("Add drawing"),
        "addNewSubDetail":
            MessageLookupByLibrary.simpleMessage("Add new subdetail"),
        "addNote": MessageLookupByLibrary.simpleMessage("Add note..."),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Add photo"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "casting": MessageLookupByLibrary.simpleMessage("casting"),
        "circle": MessageLookupByLibrary.simpleMessage("circle"),
        "color": MessageLookupByLibrary.simpleMessage("Color"),
        "componentsOfDetail":
            MessageLookupByLibrary.simpleMessage("Components of "),
        "cutting": MessageLookupByLibrary.simpleMessage("cutting"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteConfirmation":
            MessageLookupByLibrary.simpleMessage("Delete confirmation"),
        "deleteConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "This detail and all it\'s subdetails will be deleted"),
        "deleteDetail": MessageLookupByLibrary.simpleMessage("Delete details"),
        "deleteSubDetailSerialNumber": m0,
        "detailColors":
            MessageLookupByLibrary.simpleMessage("Detail type colors"),
        "detailName": MessageLookupByLibrary.simpleMessage("Detail name"),
        "detailTileText": m1,
        "detailType": MessageLookupByLibrary.simpleMessage("Detail type"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "detailsList": MessageLookupByLibrary.simpleMessage("Details list"),
        "drawing": MessageLookupByLibrary.simpleMessage("Drawing"),
        "drawingAdded": MessageLookupByLibrary.simpleMessage(
            "Drawing is successfully added!"),
        "drawingExpirationDate":
            MessageLookupByLibrary.simpleMessage("Drawing expiration date"),
        "drawingExpired":
            MessageLookupByLibrary.simpleMessage("Drawing is expired"),
        "drawingSoonExpiring": MessageLookupByLibrary.simpleMessage(
            "До истечения чертежа осталось менее 10 дней"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editDetail": MessageLookupByLibrary.simpleMessage("Edit detail"),
        "enterDetailName":
            MessageLookupByLibrary.simpleMessage("Enter detail name"),
        "enterDrawingExpirationDate": MessageLookupByLibrary.simpleMessage(
            "Enter drawing expiration date"),
        "enterOrderNumber":
            MessageLookupByLibrary.simpleMessage("Enter order number"),
        "enterSubDetailName":
            MessageLookupByLibrary.simpleMessage("Enter subdetail name"),
        "errorLoadingDetails":
            MessageLookupByLibrary.simpleMessage("Error loading details"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "imageNotAdded":
            MessageLookupByLibrary.simpleMessage("Image was not added"),
        "imageNotFound":
            MessageLookupByLibrary.simpleMessage("Image not found"),
        "information": MessageLookupByLibrary.simpleMessage("Information"),
        "noNotes": MessageLookupByLibrary.simpleMessage("No notes"),
        "none": MessageLookupByLibrary.simpleMessage("---"),
        "notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Order number"),
        "photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "photoAdded": MessageLookupByLibrary.simpleMessage(
            "Photo is successfully added!"),
        "replaceDrawing":
            MessageLookupByLibrary.simpleMessage("Replace drawing"),
        "replacePhoto": MessageLookupByLibrary.simpleMessage("Replace photo"),
        "rubber": MessageLookupByLibrary.simpleMessage("rubber"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "searchByOrderNumber":
            MessageLookupByLibrary.simpleMessage("Search by order number"),
        "selectDetail": MessageLookupByLibrary.simpleMessage(
            "Select detail to see more information"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "startTypingOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Start typing order number..."),
        "statusInProgress": MessageLookupByLibrary.simpleMessage("В работе"),
        "statusWaiting": MessageLookupByLibrary.simpleMessage("Ожидание"),
        "subDetailDrawingAdded": m2,
        "subDetailInformation": m3,
        "subDetailPhotoAdded": m4,
        "subDetailSerialNumber": m5,
        "subDetailTileText": m6,
        "subDetailTypeSerialNumber": m7,
        "techProcess":
            MessageLookupByLibrary.simpleMessage("Technological process"),
        "type": MessageLookupByLibrary.simpleMessage("Type")
      };
}
