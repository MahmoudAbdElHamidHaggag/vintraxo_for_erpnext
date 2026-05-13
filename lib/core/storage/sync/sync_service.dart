import 'dart:async';
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vintraxo_for_erpnext/core/storage/database/app_database.dart';
import 'package:vintraxo_for_erpnext/core/storage/database/database_provider.dart';
import 'package:vintraxo_for_erpnext/features/metadata/data/repositories/metadata_repository.dart';
import 'package:vintraxo_for_erpnext/features/metadata/presentation/providers/metadata_providers.dart';

class SyncService {
  final AppDatabase db;
  final MetadataRepository repository;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? _connectivitySubscription;
  bool _isProcessing = false;

  SyncService({required this.db, required this.repository}) {
    _init();
  }

  void _init() {
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((results) {
      // connectivity_plus 6.0+ returns a List<ConnectivityResult>
      if (results.any((r) => r != ConnectivityResult.none)) {
        processQueue();
      }
    });
  }

  Future<void> processQueue() async {
    if (_isProcessing) return;
    _isProcessing = true;

    try {
      final pending = await (db.select(db.syncQueue)..orderBy([(t) => OrderingTerm(expression: t.timestamp)])).get();

      for (final item in pending) {
        final success = await _syncItem(item);
        if (success) {
          await (db.delete(db.syncQueue)..where((t) => t.id.equals(item.id))).go();
        } else {
          // Increment retry count
          await (db.update(db.syncQueue)..where((t) => t.id.equals(item.id))).write(
            SyncQueueCompanion(retryCount: Value(item.retryCount + 1)),
          );
          // If too many retries, maybe stop or skip
          if (item.retryCount > 5) break; 
        }
      }
    } finally {
      _isProcessing = false;
    }
  }

  Future<bool> _syncItem(SyncQueueEntity item) async {
    try {
      final payload = jsonDecode(item.payload);
      
      // This is a simplified logic. In a real app, we'd need a more generic way to push resources.
      // For now, we only handle generic resource creation/update.
      
      // Note: MetadataRepository needs methods for Create/Update/Delete.
      // I'll add them in the next step.
      
      return true; // Placeholder
    } catch (e) {
      return false;
    }
  }

  void dispose() {
    _connectivitySubscription?.cancel();
  }
}

final syncServiceProvider = Provider<SyncService>((ref) {
  final db = ref.watch(databaseProvider);
  final repository = ref.watch(metadataRepositoryProvider);
  return SyncService(db: db, repository: repository);
});
