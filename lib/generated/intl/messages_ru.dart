// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(serialNumber) => "Удалить поддеталь ${serialNumber}";

  static String m1(orderNumber, name) => "${orderNumber} ${name}";

  static String m2(serialNumber) =>
      "Чертёж поддетали ${serialNumber} успешно добавлен!";

  static String m3(serialNumber) => "Информация о поддетали ${serialNumber}";

  static String m4(serialNumber) =>
      "Фото поддетали ${serialNumber} успешно добавлено!";

  static String m5(serialNumber) => "Поддеталь ${serialNumber}";

  static String m6(name) => "${name}";

  static String m7(serialNumber) => "Тип поддетали ${serialNumber}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addDetail": MessageLookupByLibrary.simpleMessage("Добавить деталь"),
        "addDrawing": MessageLookupByLibrary.simpleMessage("Добавить чертёж"),
        "addNewSubDetail":
            MessageLookupByLibrary.simpleMessage("Добавить новую поддеталь"),
        "addNote": MessageLookupByLibrary.simpleMessage("Добавить заметку..."),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Добавить фото"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "camera": MessageLookupByLibrary.simpleMessage("Камера"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "casting": MessageLookupByLibrary.simpleMessage("литьё"),
        "circle": MessageLookupByLibrary.simpleMessage("круг"),
        "color": MessageLookupByLibrary.simpleMessage("Цвет"),
        "componentsOfDetail":
            MessageLookupByLibrary.simpleMessage("Компоненты детали "),
        "cutting": MessageLookupByLibrary.simpleMessage("порезка"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteConfirmation":
            MessageLookupByLibrary.simpleMessage("Подтверждение удаления"),
        "deleteConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить эту деталь вместе со всеми поддеталями?"),
        "deleteDetail": MessageLookupByLibrary.simpleMessage("Удалить деталь"),
        "deleteSubDetailSerialNumber": m0,
        "detailColors":
            MessageLookupByLibrary.simpleMessage("Обозначение статуса детали"),
        "detailName":
            MessageLookupByLibrary.simpleMessage("Наименование детали"),
        "detailTileText": m1,
        "detailType": MessageLookupByLibrary.simpleMessage("Тип детали"),
        "details": MessageLookupByLibrary.simpleMessage("Детали"),
        "detailsList": MessageLookupByLibrary.simpleMessage("Список деталей"),
        "drawing": MessageLookupByLibrary.simpleMessage("Чертёж"),
        "drawingAdded": MessageLookupByLibrary.simpleMessage(
            "Чертёж детали успешно добавлен!"),
        "drawingExpirationDate":
            MessageLookupByLibrary.simpleMessage("Срок годности чертежа"),
        "drawingExpired": MessageLookupByLibrary.simpleMessage(
            "Чертёж детали просрочен. Необходимо продлить чертёж"),
        "drawingRemoved":
            MessageLookupByLibrary.simpleMessage("Drawing removed"),
        "drawingSoonExpiring": MessageLookupByLibrary.simpleMessage(
            "До истечения чертежа осталось менее 10 дней"),
        "edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "editDetail":
            MessageLookupByLibrary.simpleMessage("Редактировать деталь"),
        "enterDetailName":
            MessageLookupByLibrary.simpleMessage("Введите наименование детали"),
        "enterDrawingExpirationDate": MessageLookupByLibrary.simpleMessage(
            "Введите срок годности чертежа"),
        "enterOrderNumber":
            MessageLookupByLibrary.simpleMessage("Введите номер заказа"),
        "enterSubDetailName":
            MessageLookupByLibrary.simpleMessage("Введите название поддетали"),
        "errorLoadingDetails": MessageLookupByLibrary.simpleMessage(
            "Возникла ошибка при загрузке данных"),
        "gallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "imageNotAdded":
            MessageLookupByLibrary.simpleMessage("Фото не было добавлено"),
        "imageNotFound":
            MessageLookupByLibrary.simpleMessage("Изображение не найдено"),
        "information": MessageLookupByLibrary.simpleMessage("Информация"),
        "noNotes": MessageLookupByLibrary.simpleMessage("Нет заметок"),
        "none": MessageLookupByLibrary.simpleMessage("---"),
        "notes": MessageLookupByLibrary.simpleMessage("Заметки"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "orderNumber": MessageLookupByLibrary.simpleMessage("Номер заказа"),
        "photo": MessageLookupByLibrary.simpleMessage("Фото"),
        "photoAdded": MessageLookupByLibrary.simpleMessage(
            "Фото детали успешно добавлено!"),
        "photoRemoved": MessageLookupByLibrary.simpleMessage("Photo removed"),
        "removeDrawing": MessageLookupByLibrary.simpleMessage("Чертёж удалён"),
        "removePhoto": MessageLookupByLibrary.simpleMessage("Фото удалено"),
        "replaceDrawing":
            MessageLookupByLibrary.simpleMessage("Заменить чертёж"),
        "replacePhoto": MessageLookupByLibrary.simpleMessage("Заменить фото"),
        "requiredFieldsEmpty": MessageLookupByLibrary.simpleMessage(
            "Обязательные поля для детали или поддеталей не заполнены"),
        "rubber": MessageLookupByLibrary.simpleMessage("резина"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "searchByOrderNumber":
            MessageLookupByLibrary.simpleMessage("Искать по номеру заказа"),
        "selectDetail": MessageLookupByLibrary.simpleMessage(
            "Выберите деталь для отображения информации о ней"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "startTypingOrderNumber": MessageLookupByLibrary.simpleMessage(
            "Начните вводить номер заказа..."),
        "statusInProgress": MessageLookupByLibrary.simpleMessage("В работе"),
        "statusWaiting": MessageLookupByLibrary.simpleMessage("Ожидание"),
        "subDetailDrawingAdded": m2,
        "subDetailInformation": m3,
        "subDetailPhotoAdded": m4,
        "subDetailSerialNumber": m5,
        "subDetailTileText": m6,
        "subDetailTypeSerialNumber": m7,
        "techProcess": MessageLookupByLibrary.simpleMessage("Тех.процесс"),
        "type": MessageLookupByLibrary.simpleMessage("Тип")
      };
}
