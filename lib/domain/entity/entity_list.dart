/// エンティティ一覧
class EntityList<T> {
  EntityList({
    required this.data,
    required this.totalRecords,
    required this.nextCursor,
    required this.previousCursor,
  });

  /// データ一覧
  final List<T> data;

  /// データ総数
  final int totalRecords;

  /// 次のページカーソル
  final String? nextCursor;

  /// 前のページカーソル
  final String? previousCursor;

  /// 次のページが存在するか
  bool get hasNext => nextCursor != null;

  /// 前のページが存在するか
  bool get hasPrevious => previousCursor != null;
}
