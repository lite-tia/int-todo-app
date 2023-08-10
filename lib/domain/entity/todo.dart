/// Todoエンティティ
class Todo {
  const Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.completedAt,
  });

  /// ID
  final String id;

  /// タイトル
  final String title;

  /// 内容
  final String? description;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  /// 完了日時
  final DateTime? completedAt;

  /// 完了しているか
  bool get isCompleted => completedAt != null;

  /// 未完了か
  bool get isNotCompleted => completedAt == null;
}
