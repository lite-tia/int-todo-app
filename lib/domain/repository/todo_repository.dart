import 'package:int_todo_app/domain/entity/entity_list.dart';
import 'package:int_todo_app/domain/entity/todo.dart';

interface class TodoRepository {
  /// 複数取得
  Future<EntityList<Todo>> findAll() {
    throw UnimplementedError();
  }

  /// 作成
  Future<Todo> create(TodoRepositoryCreateParam param) {
    throw UnimplementedError();
  }

  /// 更新
  Future<Todo> update(TodoRepositoryUpdateParam param) {
    throw UnimplementedError();
  }

  /// 削除
  Future<void> delete(TodoRepositoryDeleteParam param) {
    throw UnimplementedError();
  }

  /// 複数削除
  Future<void> deleteAll() {
    throw UnimplementedError();
  }
}

/// 複数取得パラメータ
class TodoRepositoryFindAllParam {}

/// 取得パラメータ
class TodoRepositoryFindParam {}

/// 作成パラメータ
class TodoRepositoryCreateParam {}

/// 更新パラメータ
class TodoRepositoryUpdateParam {}

/// 削除パラメータ
class TodoRepositoryDeleteParam {}

/// 複数削除パラメータ
class TodoRepositoryDeleteAllParam {}
