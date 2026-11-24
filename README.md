# My Study Planner

A Flutter mobile application that helps students organize, plan, and track their study goals. Students can view their subjects and planned study hours, mark goals as completed with strike-through styling, delete items, and add new goals.

---

## Features
- View study goals showing subject name and planned study hours
- Mark a goal as done (with strike-through styling) or undo it by tapping the checkbox or tile
- Delete a goal using the delete icon button
- Add a new goal using the `+` FloatingActionButton
- Reactive UI updates powered by `setState()`
- SQLite database schema and CRUD helper functions (`initDatabase`, `insertGoal`, `getGoals`, `updateGoal`, `deleteGoal`) via `sqflite`

---

## Project Phases

| Phase | Title | What It Covers |
| :--- | :--- | :--- |
| **Phase 1** | Static Screen | `MaterialApp`, `Scaffold`, `StatelessWidget`, `AppBar` titled *"My Study Planner"*, `"My Goals"` heading, fixed goal cards (`Card` + `ListTile`), and a placeholder `FloatingActionButton` |
| **Phase 2** | Working List | `StatefulWidget` (`HomeScreen`), list of maps (`subject`, `hours`, `done`), `ListView.builder`, strike-through completion toggle, delete button, sample goal addition, and `setState()` |
| **Database Layer** | SQLite Helper | Local SQLite table (`goals`) and CRUD operations (`initDatabase`, `insertGoal`, `getGoals`, `updateGoal`, `deleteGoal`) using `sqflite` and `path` |

---

## Project Structure

```text
study_planner/
├── lib/
│   ├── main.dart              # UI screens, state management, and STATIC / LOGIC / CONNECTION comments
│   └── database_helper.dart   # SQLite database initialization and CRUD functions (sqflite)
├── screenshots/
│   ├── phase1.png             # Screenshot of Phase 1 static screen
│   ├── phase2_before.png      # Screenshot before toggling/adding goals
│   └── phase2_after.png       # Screenshot after toggling completion & updating list
├── pubspec.yaml               # Project dependencies (flutter, sqflite, path)
└── README.md                  # Project documentation and group details

```

---

## Database Schema (`goals` table)

Defined in `lib/database_helper.dart` using `sqflite`:

| Column | Type | Notes |
| --- | --- | --- |
| `id` | `INTEGER` | Primary key, auto-increment (`PRIMARY KEY AUTOINCREMENT`) |
| `subject` | `TEXT` | Name of the study subject (`NOT NULL`) |
| `hours` | `INTEGER` | Planned study hours (`NOT NULL`) |
| `done` | `INTEGER` | Completion status (`0` = not done, `1` = done; converted to/from `bool` in Dart) |

---

## Technologies

* **Flutter & Dart**
* **`sqflite`** :Local SQLite database plugin for Android and iOS
* **`path`** :Cross-platform database file path construction

---

## How to Run

1. **Set Up Your Environment:** Install Flutter and Android Studio (or VS Code), and configure an Android emulator or physical device.
2. **Create or Open the Project:**
```bash
flutter create study_planner
cd study_planner

```


3. **Add Project Files:** Place `main.dart` and `database_helper.dart` inside the `lib/` folder, and ensure `sqflite` and `path` are listed in `pubspec.yaml`.
4. **Install Packages & Run:**
```bash
flutter pub get
flutter run

```


*(Note: `sqflite` targets Android and iOS devices/emulators rather than Chrome or Windows desktop.)*

---

## Screenshots

### Phase 1 Static Screen

### Phase 2 Working List (Before Toggling)

### Phase 2 Working List (After Toggling)

---

## Group Information

**Group Number:** 9

| No. | Name | Registration Number |
| --- | --- | --- |
| 1 | Loriana | 19588/2022 |
| 2 | Stevy | 23049/2023 |
| 3 | Dania | 23062/2023 |
| 4 | Vanessa | 26251/2024 |
| 5 | Sam | 31064/2025 |

```

```
