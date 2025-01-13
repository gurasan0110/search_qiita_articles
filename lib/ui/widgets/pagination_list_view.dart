import 'package:flutter/material.dart';

class PaginationListView<T> extends StatelessWidget {
  const PaginationListView(
    this.value, {
    super.key,
    required this.isLoadingNextPage,
    required this.onRefresh,
    required this.onPagination,
    required this.itemBuilder,
  });

  final List<T> value;
  final bool isLoadingNextPage;
  final Future<void> Function() onRefresh;
  final void Function() onPagination;
  final Widget Function(BuildContext context, T value) itemBuilder;

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
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == value.length) {
              return Center(child: CircularProgressIndicator());
            }

            return itemBuilder(context, value[index]);
          },
          itemCount: value.length + (isLoadingNextPage ? 1 : 0),
        ),
      ),
    );
  }
}
