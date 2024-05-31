import 'package:meta/meta.dart';
import 'text_message_translation_state.dart';

/// A class that represents the message translation empty state.
@immutable
abstract class TextMessageTranslationStateEmpty
    extends TextMessageTranslationState {
  /// Creates a empty translation state.
  const TextMessageTranslationStateEmpty._()
      : super(type: MessageTranslationStateType.empty);

  const factory TextMessageTranslationStateEmpty() =
      _TextMessageTranslationStateEmpty;

  factory TextMessageTranslationStateEmpty.fromJson() =>
      const TextMessageTranslationStateEmpty();

  /// Converts a failed translation state to the map representation, encodable to JSON.
  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
      };
}

/// A utility class.
class _TextMessageTranslationStateEmpty
    extends TextMessageTranslationStateEmpty {
  const _TextMessageTranslationStateEmpty() : super._();
}
