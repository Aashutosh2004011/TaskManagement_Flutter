# Smart Task Manager - Flutter Application

A modern, intelligent task management mobile application built with Flutter that automatically classifies and organizes tasks based on content analysis.

## Features

### Core Functionality
- **Smart Task Creation**: Automatically classifies tasks by category and priority based on content
- **Task Dashboard**: Comprehensive overview with statistics and filters
- **Task Management**: Create, read, update, and delete tasks
- **Intelligent Classification**: Auto-detection of:
  - Category (Scheduling, Finance, Technical, Safety, General)
  - Priority (High, Medium, Low)
  - Extracted entities (dates, persons, locations, action verbs)
  - Suggested actions based on category

### UI/UX Features
- **Material Design 3**: Modern, clean interface
- **Summary Cards**: Quick overview of task statistics by status
- **Advanced Filtering**: Filter by category, priority, and status
- **Search Functionality**: Real-time task search
- **Pull to Refresh**: Easy data refresh
- **Loading States**: Skeleton loaders and progress indicators
- **Error Handling**: User-friendly error messages
- **Offline Indicator**: Network connectivity status
- **Responsive Design**: Optimized for various screen sizes

## Tech Stack

### Frontend (Flutter)
- **Framework**: Flutter 3.9.2+
- **State Management**: Riverpod 2.6.1 (with code generation)
- **HTTP Client**: Dio 5.7.0
- **JSON Serialization**: Freezed & json_serializable
- **UI Utilities**:
  - flutter_hooks
  - intl (date formatting)
  - connectivity_plus (network detection)
  - flutter_dotenv (environment variables)

### Backend Integration
- **API**: Node.js/Express backend with RESTful API
- **Database**: PostgreSQL/Supabase
- **Endpoints**:
  - `POST /api/tasks` - Create task
  - `GET /api/tasks` - List tasks (with filters)
  - `GET /api/tasks/:id` - Get task details
  - `PATCH /api/tasks/:id` - Update task
  - `DELETE /api/tasks/:id` - Delete task
  - `GET /api/tasks/statistics` - Get statistics

## Project Structure

```
lib/
├── core/
│   ├── config/
│   │   └── api_config.dart              # API configuration
│   ├── constants/
│   │   └── app_constants.dart           # App-wide constants
│   └── utils/
│       ├── dio_client.dart              # HTTP client setup
│       └── extensions.dart              # Dart extensions
├── data/
│   ├── models/
│   │   └── task_model.dart              # Data models (Freezed)
│   └── datasources/
│       └── task_remote_datasource.dart  # API data source
├── presentation/
│   ├── providers/
│   │   ├── dio_provider.dart            # Dio provider
│   │   └── task_providers.dart          # Task state providers
│   ├── screens/
│   │   └── dashboard_screen.dart        # Main dashboard
│   └── widgets/
│       ├── summary_card.dart            # Statistics card widget
│       ├── task_card.dart               # Task list item widget
│       └── task_form_sheet.dart         # Create/Edit form
└── main.dart                             # App entry point
```

## Setup Instructions

### Prerequisites
- Flutter SDK (3.9.2 or higher)
- Dart SDK (included with Flutter)
- iOS Simulator / Android Emulator / Physical Device
- Backend API running (see backend repository)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Flutter_TaskManagement
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure environment variables**

   Create a `.env` file in the project root:
   ```env
   API_BASE_URL=http://localhost:3000/api
   ```

   For testing with physical device, use your computer's IP:
   ```env
   API_BASE_URL=http://192.168.1.x:3000/api
   ```

4. **Run code generation**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Run the application**
   ```bash
   flutter run
   ```

### Running on Different Platforms

**iOS Simulator**
```bash
flutter run -d ios
```

**Android Emulator**
```bash
flutter run -d android
```

**Web**
```bash
flutter run -d chrome
```

## Configuration

### API Endpoint Configuration

Update the `.env` file with your backend URL:

**Local Development:**
```env
API_BASE_URL=http://localhost:3000/api
```

**Production:**
```env
API_BASE_URL=https://your-backend-url.com/api
```

### Color Scheme Customization

Modify `lib/core/constants/app_constants.dart` to customize category, priority, and status colors.

## Architecture

### Clean Architecture Principles

The app follows a clean architecture pattern with clear separation of concerns:

1. **Presentation Layer**: UI components and state management (Riverpod)
2. **Data Layer**: API integration, data sources, and models
3. **Core Layer**: Utilities, constants, and configuration

### State Management

Using Riverpod for reactive state management:

- **Providers**: Auto-generated using riverpod_generator
- **State Classes**: Freezed for immutable state
- **Async States**: Built-in AsyncValue for loading/error states

## API Integration

### Request/Response Examples

**Create Task:**
```json
POST /api/tasks
{
  "title": "Schedule urgent meeting with team today",
  "description": "Discuss budget allocation for Q4",
  "assigned_to": "John Doe",
  "due_date": "2024-01-15T10:00:00Z"
}

Response:
{
  "task": {
    "id": "uuid",
    "title": "Schedule urgent meeting with team today",
    "category": "scheduling",
    "priority": "high",
    "status": "pending",
    "extracted_entities": {...},
    "suggested_actions": ["Block calendar", "Send invite", "Prepare agenda"]
  }
}
```

## Troubleshooting

### Common Issues

1. **Build errors after pulling changes**
   ```bash
   flutter clean
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

2. **Cannot connect to backend**
   - Ensure backend is running
   - Check `.env` file has correct API URL
   - For physical devices, use computer's IP address
   - Check firewall settings

3. **Code generation errors**
   ```bash
   flutter pub run build_runner clean
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Future Enhancements

Given more time, the following features would be added:

1. Dark Mode Support
2. Task Search with Highlighting
3. Export to CSV
4. Real-time Updates (Supabase subscriptions)
5. Offline Support with local database
6. Push Notifications
7. Task Attachments
8. Advanced Analytics
9. Task Sharing
10. Voice Input

---

**Built with Flutter for Navicon Infraprojects**
