# producthunt

## Overview
A simple Flutter app that fetches and displays a list of products from a REST API. It features pull-to-refresh, loading and error states, local search, and a responsive card-based UI. Pagination is supported if available via API.

## Features
- Fetch product list and handle all error


### Prerequisites

Ensure Flutter is installed on your machine. For installation instructions, refer to the official [Flutter website](https://flutter.dev/docs/get-started/install).


### Installation

Follow these steps to run the News Read Application:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/hredhayxz/producthunt.git
```

2. Navigate to the project folder:

```bash
cd producthunt
```

3. Install dependencies:


```bash
flutter pub get
```

### How to Run

Connect your device or emulator and run the app using the following command:

```bash
flutter run
```

### Screenshots

<div style="display: flex; flex-wrap: wrap;">
   <img src="https://github.com/hredhayxz/producthunt/blob/main/screenshot_preview/1.png" width="200" />
<img src="https://github.com/hredhayxz/producthunt/blob/main/screenshot_preview/2.png" width="200" />
</div>

### APK
Download the latest APK here. [Download](https://drive.google.com/file/d/1N7kkcYE7Gn_aXxZ6lIeuBvaqjKfYVaMI/view?usp=sharing)


### Project Structure
```
lib/
├── core/              # Core utilities, constants, and DI
├── data/              # Data models and repositories
├── presentation/      # UI and BLoC logic
└── main.dart          # App entry point
```
