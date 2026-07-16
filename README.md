# LifeOS

A production-grade Flutter application foundation built for scalability, performance, and maintainability.

## Project Overview

LifeOS is designed with a feature-first approach combined with a clean core architecture. It provides a robust starting point for complex applications, integrating modern industry-standard libraries and patterns.

## Architecture

The project follows a **Feature-Driven Layered Architecture**:

- **Core**: Contains application-wide logic, global services, models, and shared utilities.
- **Features**: Modularized functional units containing their own UI (pages), logic, and state.
- **Design System**: A centralized repository for theme, colors, typography, and atomic design elements.
- **Services**: Specialized modules for external integrations like Supabase, Hive, and Logging.

## Folder Structure

```text
lib/
├── config/           # Application configuration (Router, etc.)
├── core/             # Global building blocks
│   ├── models/       # Shared data models
│   ├── providers/    # Shared Riverpod providers
│   ├── repositories/ # Shared data repositories
│   ├── utils/        # Global utility functions
│   └── widgets/      # Common UI components
├── design_system/    # Branding & styling foundation
├── features/         # Modular business features
│   ├── dashboard/
│   ├── login/
│   └── ...
└── services/         # Infrastructure & 3rd-party integrations
```

## Technology Stack

- **Framework**: Flutter 3.44.4 (Stable)
- **Language**: Dart 3.12.2
- **State Management**: Riverpod (with code generation)
- **Navigation**: GoRouter
- **Backend**: Supabase
- **Local Storage**: Hive CE
- **Logging**: Logger
- **Environment**: flutter_dotenv

## How to Run

1.  **Prerequisites**:
    - Flutter SDK (3.44.4 or compatible)
    - Dart SDK (3.12.2 or compatible)

2.  **Environment Setup**:
    - Create a `.env` file in the root directory.
    - Add the following variables:
      ```env
      SUPABASE_URL=your_project_url
      SUPABASE_KEY=your_anon_key
      ```

3.  **Install Dependencies**:
    ```bash
    flutter pub get
    ```

4.  **Run the App**:
    ```bash
    flutter run
    ```

5.  **Code Generation**:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

## Environment Variables

| Variable | Description |
| :--- | :--- |
| `SUPABASE_URL` | The API URL of your Supabase project. |
| `SUPABASE_KEY` | The anonymous API key for your Supabase project. |
