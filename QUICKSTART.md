# Quick Start Guide - Smart Task Manager Flutter App

## Prerequisites
- Flutter SDK installed (3.9.2+)
- Backend API running on `http://localhost:3000`
- Android Emulator or iOS Simulator

## Setup (5 Minutes)

### 1. Install Dependencies
```bash
flutter pub get
```

### 2. Run Code Generation
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Configure Backend URL
The `.env` file is already configured for local development:
```
API_BASE_URL=http://localhost:3000/api
```

**For physical device testing**, update `.env` with your computer's IP:
```
API_BASE_URL=http://192.168.1.x:3000/api
```

### 4. Start the Backend
In the backend directory (`../TaskManagement_Backend`):
```bash
npm run dev
```

### 5. Run the Flutter App
```bash
flutter run
```

That's it! The app should now be running and connected to your backend.

## Testing the App

### Create Your First Task
1. Tap the **"New Task"** floating button
2. Enter:
   - Title: "Schedule urgent meeting with team today"
   - Description: "Discuss Q4 budget allocation"
3. Notice how the app automatically:
   - Detects category as "Scheduling"
   - Sets priority to "High" (due to "urgent" keyword)
   - Extracts entities and suggests actions
4. Tap **"Create Task"**

### Explore Features
- **Filter by Status**: Tap on summary cards (Pending, In Progress, Completed)
- **Filter by Category**: Use filter chips below the overview
- **Search Tasks**: Use the search bar at the top
- **Update Task**: Tap on any task card to edit
- **Clear Filters**: Tap the clear icon in the app bar

## Common Issues

### "Cannot connect to backend"
- Ensure backend is running: `cd ../TaskManagement_Backend && npm run dev`
- Check backend is accessible at `http://localhost:3000`
- For physical devices, use your computer's IP in `.env`

### "Build errors"
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### "Code generation issues"
```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

## App Features at a Glance

✅ **Auto-Classification**: Tasks are automatically categorized and prioritized
✅ **Smart Dashboard**: Overview cards showing task statistics
✅ **Advanced Filtering**: Filter by category, priority, and status
✅ **Real-time Search**: Search across title and description
✅ **Pull to Refresh**: Swipe down to refresh data
✅ **Error Handling**: User-friendly error messages
✅ **Loading States**: Smooth loading indicators
✅ **Material Design 3**: Modern, polished UI

## API Endpoints Used

- `POST /api/tasks` - Create task
- `GET /api/tasks` - List tasks with filters
- `GET /api/tasks/:id` - Get task details
- `PATCH /api/tasks/:id` - Update task
- `DELETE /api/tasks/:id` - Delete task
- `GET /api/tasks/statistics` - Get statistics

## Project Structure
```
lib/
├── core/           # Configuration & utilities
├── data/           # Models & data sources
└── presentation/   # UI screens & widgets
```

## Next Steps

- Read the full [README.md](README.md) for detailed documentation
- Explore the clean architecture implementation
- Check out the Riverpod state management patterns
- Review the Freezed data classes

---

Happy coding! 🚀
