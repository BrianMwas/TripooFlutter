
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recent_activity.freezed.dart';

@freezed
abstract class RecentActivity implements _$RecentActivity {
    const factory RecentActivity({
      String id,
      String title,
      String description,
}) = _RecentActivity;

    const RecentActivity._();

    factory RecentActivity.empty() => RecentActivity(
      id: "",
      title: "",
      description: "",
    );
}

