# Vintraxo For ERPNext - Project Vision & Implementation Plan

This document outlines the implementation plan for **Vintraxo For ERPNext**, a dynamic runtime ERP platform and metadata-driven UI engine for ERPNext systems. The application is built on an offline-first architecture prioritizing abstraction, scalability, runtime rendering, metadata intelligence, cross-platform support, and modularity.

## Architecture & Technology Stack

- **Framework:** Flutter (Shared codebase for Mobile, Web, and Desktop)
- **State Management:** Riverpod
- **Routing:** GoRouter
- **Networking:** Dio
- **Local Database:** Abstracted `OfflineStorageAdapter` (Drift SQLite for Mobile/Desktop, IndexedDB for Web).
- **Data Parsing:** Freezed + json_serializable
- **UI Architecture:** Vintraxo Design System with a Responsive Runtime Layout Engine.

## Core Architectural Pillars

1.  **Cross-Platform Adapter Layer:** Isolates platform-specific logic (secure storage, file system).
2.  **Web Proxy Gateway:** A standalone middleware server handling CORS bypass and API forwarding for Web.
3.  **Responsive Runtime Layout Engine:** Dynamically adapts workspaces based on screen size and platform.
4.  **Metadata Dependency Graph Engine:** Analyzes interconnected metadata to resolve loading order.
5.  **Schema Versioning System:** Tracks `metadata_version` and `schema_hash` to invalidate caches.
6.  **Authentication Abstraction Layer:** Supports Session, API Key, JWT, OAuth, and SSO via `AuthStrategy`.
7.  **Internal UI Schema Layer:** Translates ERPNext metadata to an intermediate schema before widget generation.
8.  **Unified Query Engine:** Centralized abstraction for online/offline queries, caching, and retry logic.
9.  **Incremental Runtime Rebuild:** Uses dirty tracking to avoid full rebuilds.
10. **Dynamic Relation & Link Field Engine:** Handles remote/local lookup and lazy loading of relational data.

## Future-Ready Foundations

The following lightweight abstractions will be laid out to ensure long-term extensibility without over-engineering the MVP:
- **Plugin System:** (`abstract class VintraxoPlugin {}`)
- **Feature Flags:** (`abstract class FeatureFlagProvider {}`)
- **Background Task Engine:** For sync queues and offline recovery.
- **Realtime Communication Layer:** (`abstract class RealtimeTransport {}`)
- **AI Integration Layer:** (`abstract class AIProvider {}`)

## Engineering Principles

> [!TIP]
> **Vertical Slice Development Principle:** Development will follow vertical slices (e.g., Domain -> Login -> Workspace -> Dynamic List -> Save Document) rather than building all engines simultaneously.
> 
> **Anti Over-Engineering Principle:** Abstractions will be built only when needed, preferring simple implementations first (e.g., `MetadataService` over `AbstractUniversalEnterpriseMetadataResolverFactoryBuilder`).

## Implementation Phases

### Phase 1: Core Connection & Authentication (Executing Now)
- Initialize the Flutter project structure in `vintraxo_for_erpnext`.
- Set up core dependencies (Riverpod, GoRouter, Dio, Freezed, Drift).
- Establish the **Platform Adapter Layer** and Future-Ready Abstractions (`AuthStrategy`, `AIProvider`, etc.).
- Build the Domain Entry and Login screens.
- Implement the `AuthStrategy` abstraction layer to authenticate against ERPNext.

### Phase 2: Metadata Fetching Layer
- Implement networking layers to fetch Module Definitions, DocTypes, and DocFields.
- Implement the Metadata Dependency Graph Engine.

### Phase 3: Local Metadata Cache & Schema Versioning
- Integrate Drift / IndexedDB behind the `OfflineStorageAdapter`.
- Build the schema version tracking and caching logic.

### Phase 4: Internal UI Schema Engine
- Develop the translation layer from ERPNext JSON structures to the abstract Internal UI Schema.

### Phase 5: Widget Factory & Dynamic Form Renderer
- Build the engine to render forms, tabs, and fields dynamically from the Internal UI Schema.

### Phase 6: Dynamic ListView Engine
- Implement the engine for list rendering, supporting pagination, filtering, grouping, and offline queries.

### Phase 7: Workspace, Navigation & Responsive Layout Engine
- Generate module dashboards, menus, and navigation trees dynamically.
- Implement the Responsive Runtime Layout Engine.

### Phase 8: Reports & Dashboard Engine
- Render charts, number cards, and interactive reports dynamically from ERPNext definitions.

### Phase 9: Offline Sync Engine
- Finalize the Repository Pattern + Queue System for robust background syncing.

### Phase 10: Advanced UX, Animations & Optimization
- Polish the UI with smooth animations, dynamic theming, and performance tuning.
