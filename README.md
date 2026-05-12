# Vintraxo For ERPNext

Vintraxo For ERPNext is a modern Flutter-based mobile application designed as a fully dynamic frontend engine for ERPNext systems. 

It is not a static ERP mobile app, but rather a **Dynamic Runtime ERP Platform** capable of rendering UI dynamically from ERPNext metadata.

---

## Architecture & Technology Stack
- **Framework:** Flutter (Shared codebase for Mobile, Web, and Desktop)
- **State Management:** Riverpod
- **Routing:** GoRouter
- **Networking:** Dio
- **Local Database:** Drift (SQLite ORM) for relational metadata and offline sync
- **Data Parsing:** Freezed + json_serializable
- **UI System:** Vintraxo Design System

---

## Development Progress Tracker

### ✅ Phase 1: Core Connection & Authentication
- **Project Structure:** Initialized Flutter project with core dependencies.
- **Architectural Abstractions:** Implemented foundational interfaces (`AuthStrategy`, `OfflineStorageAdapter`, `VintraxoPlugin`, `FeatureFlagProvider`, `RealtimeTransport`, `AIProvider`).
- **UI Foundation:** Created the `AppTheme` with modern enterprise tokens.
- **Auth Flow:** Built the `DomainEntryScreen`, `LoginScreen`, and `ERPNextAuthStrategy` for API authentication.

### ✅ Phase 2: Metadata Fetching Layer & Dependency Graph
- **Metadata Models:** Built `ModuleDef`, `DocType`, and `DocField` using Freezed.
- **Networking:** Implemented `MetadataRepository` and `ERPNextMetadataRepository` to fetch metadata from ERPNext.
- **Dependency Graph Engine:** Built the `MetadataDependencyGraph` to analyze DocTypes, extract relational dependencies (Link, Table), and compute a safe loading order using topological sorting.

### ✅ Phase 3: Local Metadata Cache & Schema Versioning
- **Database:** Integrated Drift SQLite local database.
- **Caching & Hashing:** Built the `SchemaVersioningService` with `generateSchemaHash` using `SHA-256` to detect schema changes before unnecessarily downloading data from ERPNext.

### 🏗️ Phase 4: Internal UI Schema Engine (In Progress)
- [ ] Develop the translation layer from ERPNext JSON structures to the abstract Internal UI Schema.

### ⏳ Phase 5: Widget Factory & Dynamic Form Renderer
- [ ] Build the engine to render forms, tabs, and fields dynamically from the Internal UI Schema.

### ⏳ Phase 6: Dynamic ListView Engine
- [ ] Implement the engine for list rendering, supporting pagination, filtering, grouping, and offline queries.

### ⏳ Phase 7: Workspace & Navigation Engine
- [ ] Generate module dashboards, menus, and navigation trees dynamically.
- [ ] Implement Responsive Runtime Layout Engine (Adaptive sidebars, panels).

### ⏳ Phase 8: Reports & Dashboard Engine
- [ ] Render charts, number cards, and interactive reports dynamically from ERPNext definitions.

### ⏳ Phase 9: Offline Sync Engine
- [ ] Finalize the Repository Pattern + Queue System for robust background syncing.

### ⏳ Phase 10: Advanced UX, Animations & Optimization
- [ ] Polish the UI with smooth animations, dynamic theming, and performance tuning.
