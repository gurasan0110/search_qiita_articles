import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_progress_indicator.dart';

class PaginationListView<T> extends StatelessWidget {
  const PaginationListView(
    this.value, {
    super.key,
    required this.isLoadingNextPage,
    required this.onRefresh,
    required this.onPagination,
    required this.itemBuilder,
    required this.separatorBuilder,
  });

  final List<T> value;
  final bool isLoadingNextPage;
  final Future<void> Function() onRefresh;
  final void Function() onPagination;
  final Widget Function(BuildContext context, T value) itemBuilder;
  final Widget Function(BuildContext context) separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        if (metrics.pixels / metrics.maxScrollExtent < .9) return false;
        onPagination();
        return false;
      },
      child: RefreshIndicator(
        onRefresh: onRefresh,
        color: AppColors.qiitaGreen,
        child: ListView.separated(
          itemBuilder: (context, index) {
            if (index == value.length) {
              return Center(child: DefaultProgressIndicator());
            }

            return itemBuilder(context, value[index]);
          },
          separatorBuilder: (context, index) {
            if (index == value.length - 1) return SizedBox.shrink();
            return separatorBuilder(context);
          },
          itemCount: value.length + (isLoadingNextPage ? 1 : 0),
        ),
      ),
    );
  }
}
