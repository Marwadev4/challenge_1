# Interactive Dismissible Lists

A Flutter task management widget that combines `Dismissible` with `ReorderableListView` to create an interactive list with swipe-to-delete and drag-to-reorder functionality.

## Features

- ✅ **Swipe-to-Delete**: Swipe tasks left or right to delete them
- 🔄 **Drag-to-Reorder**: Long press and drag tasks to reorder them
- 🗑️ **Confirmation Dialog**: Confirm before deleting tasks
- ↩️ **Undo Functionality**: Restore accidentally deleted tasks using SnackBar
- 📱 **Responsive Design**: Works on both mobile and desktop

## Demo

![Interactive Dismissible Lists Demo](https://via.placeholder.com/300x600?text=Demo+Image)

## Getting Started

### Prerequisites

- Flutter SDK (version 3.0 or higher)
- Dart (version 2.17 or higher)

### Installation

1. Clone this repository:
```bash
git clone https://github.com/your-username/interactive-dismissible-lists.git
```

2. Navigate to the project directory:
```bash
cd interactive-dismissible-lists
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Usage

### Basic Implementation

```dart
// Import the widget
import 'package:your_package/task_list_widget.dart';

// Use in your app
TaskListWidget(
  tasks: yourTaskList,
  onTaskReorder: (oldIndex, newIndex) {
    // Handle reordering
  },
  onTaskDelete: (task) {
    // Handle deletion
  },
)
```

### Sample Tasks Included

The app comes with 3 sample tasks pre-loaded:
1. "Buy groceries"
2. "Finish Flutter project" 
3. "Call mom"

## Features in Detail

### Swipe-to-Delete
- Swipe any task item left or right to reveal delete action
- Customizable swipe directions and background colors
- Smooth animations and visual feedback

### Drag-to-Reorder
- Long press on any task to initiate drag
- Visual feedback during dragging
- Smooth reordering animations

### Confirmation Dialog
- Prevents accidental deletions
- Customizable confirmation messages
- Option to cancel deletion

### Undo Functionality
- SnackBar appears after deletion
- Time-limited undo option
- Automatic permanent deletion after timeout

## Code Structure

```
lib/
├── main.dart                 # Main application file
├── widgets/
│   ├── task_list_widget.dart # Main task list widget
│   └── task_item_widget.dart # Individual task item widget
├── models/
│   └── task_model.dart       # Task data model
└── utils/
    └── constants.dart        # App constants and themes
```

## Dependencies

This project uses the following Flutter packages:

- `flutter_reorderable_list`: For drag-and-drop reordering functionality
- (Add any other dependencies you're using)

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Dismissible and ReorderableListView widget documentation
- Flutter community for best practices and examples

## Support

If you encounter any issues or have questions, please file an issue on the GitHub issue tracker.

---
https://github.com/user-attachments/assets/ec705c5d-9ae7-4d4c-8ffa-39f9b4802936
