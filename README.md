# My Study Planner

Mobile app (Flutter & Dart) that helps a student plan study goals.
Course: Mobile App Development (Dart & Flutter), UNILAK.

## Group members
- loriana 19588/2022
- Stevy 23049/2023
- Dania 23062/2023
- Vanessa 26251/2024
- Sam 31064/2025

## Phase 1 - Static Screen
Screen with fixed content: AppBar, heading "My Goals", three hard-coded
goal cards (Card + ListTile) and a FloatingActionButton that does nothing yet.
Code: `phase1/main.dart` - Screenshot: `screenshots/phase1.png`

## Phase 2 - Working List
The screen is a StatefulWidget. Goals are stored in a list of maps
(title, hours, done) and displayed with ListView.builder.
Tapping a goal marks it as done (strike-through), the delete icon removes
it, and the + button adds a sample goal. Every change goes through setState().
Code: `phase2/main.dart` - Screenshots: `screenshots/phase2_before.png`,
`screenshots/phase2_after.png`

## Project Structure
```text
study_planner/
├── phase1/
│   └── main.dart              # Phase 1: Static UI screen (StatelessWidget & hard-coded cards)
├── phase2/
│   └── main.dart              # Phase 2: Reactive list (StatefulWidget, ListView.builder & setState)
├── screenshots/
│   ├── phase1.png             # Screenshot of the static screen
│   ├── phase2_before.png      # Screenshot before toggling/adding goals
│   └── phase2_after.png       # Screenshot after toggling completion & updating list
├── pubspec.yaml               # Project configuration and Flutter dependencies
└── README.md                  # Project documentation and group details

Screenshots
Phase 1 — Static Screen
Phase 2 — Before Toggling
Phase 2 — After Toggling
## How to run
1. Install Flutter and Android Studio.
2. Create a Flutter project named `study_planner`.
3. Copy the `main.dart` of the phase into `lib/main.dart`.
4. Run on an emulator or a device.
