import 'package:blog_app/core/entity/keyword.dart';
import 'package:blog_app/core/models/keyword.dart';

class KeywordMapper {
  static KeywordEntity toEntity(KeywordModel keywordModel) {
    return KeywordEntity(name: keywordModel.name, id: keywordModel.id);
  }
}
