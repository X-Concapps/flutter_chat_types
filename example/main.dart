import 'package:flutter_chat_types/flutter_chat_types.dart'
    show TextMessage, User, PartialText, TextMessageTranslationStateProcessing;

void main() {
  const user = User(id: 'authorId');
  const message = TextMessage(author: user, id: 'id', text: 'text');
  // ignore: avoid_print
  print(message.toJson());
  final json = {
    'author': {'id': 'authorId'},
    'id': 'id',
    'text': 'text',
    'translationState': {
      'type': 'translated',
      'translations': {
        'en': 'OK',
        'de': 'OK',
        'original': 'en',
      },
    },
  };
  // ignore: avoid_print
  print(TextMessage.fromJson(json).toJson());

  /// Check copy from partial
  const partialText = PartialText(text: 'Hello world!!!');
  final messageFromPartial = TextMessage.fromPartial(
    author: user,
    id: 'id',
    partialText: partialText,
    translationState: const TextMessageTranslationStateProcessing(),
  );

  // ignore: avoid_print
  print(messageFromPartial.toJson());
}
