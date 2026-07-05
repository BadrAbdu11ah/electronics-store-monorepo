# 🛒 Electronics Store Monorepo

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Laravel](https://img.shields.io/badge/Laravel-12-red)
![License](https://img.shields.io/badge/License-MIT-green)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey)

**A production-oriented full-stack e-commerce application built with Flutter and Laravel.** The project demonstrates a modern mobile architecture using **BLoC**, **Freezed**, RESTful APIs, **Laravel Sanctum**, **Firebase Cloud Messaging**, **Google Maps** integration, and a scalable feature-based structure — organized as a single Monorepo containing both the mobile app and its backend API.

📹 [Demo Video](https://youtube.com/shorts/fwH_YK5l2TU?si=tp8RQ-wFWWDCjjTd)

---

## Table of Contents

- [Highlights](#-highlights)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Architecture](#️-architecture)
- [Backend (Laravel API)](#️-backend-laravel-api)
- [Frontend (Flutter App)](#-frontend-flutter-app)
- [Testing](#-testing)
- [Screenshots](#-screenshots)
- [Demo](#-demo)
- [Installation](#-installation)
- [Environment Variables](#-environment-variables)
- [Project Goals](#-project-goals)
- [Future Improvements](#-future-improvements)
- [License](#-license)
- [Author](#-author)

---

## ✨ Highlights

- Full-stack: Flutter + Laravel
- Feature-based architecture
- BLoC state management
- Freezed immutable models & sealed states/events
- RESTful API
- Laravel Sanctum (token-based auth)
- Firebase Cloud Messaging
- Google Maps & Geolocation
- Google Sign-In
- Unit & Bloc tests
- Monorepo structure

---

## 🧰 Tech Stack

| Frontend | Backend | Database | Services |
|-----------|----------|----------|----------|
| Flutter | Laravel 12 | MySQL | Firebase |

---

## 📁 Project Structure

```
electronics-store-monorepo/
├── backend/     # Laravel API
└── frontend/    # Flutter Mobile App
```

---

## 🏛️ Architecture

```
                Firebase
                    │
      Push Notifications (FCM)
                    ▼
Flutter App ── REST API ──▶ Laravel API ──▶ MySQL
```

### Frontend Layers

```
Presentation
      │
Application (BLoC)
      │
  Repository
   ┌──┴──────┐
   │         │
Remote      Local
Data        Data
Source      Source
   │
REST API
   │
Laravel API
```

---

## ⚙️ Backend (Laravel API)

Built with **Laravel 12** and **PHP 8.2+**, providing a complete REST API for the mobile app, secured with **Laravel Sanctum** (token-based auth).

### Core Models
- `User`
- `Items`
- `Categories`
- `Cart`
- `Favorite`
- `Address`
- `Coupon`
- `Order`

### Main API Endpoints
| Group | Description |
|---|---|
| **Auth** | Login / Signup / Password recovery (email + code verification) |
| **Home** | Store home page data |
| **Items** | Browse and search products |
| **Favorite** | Add / remove / view favorites |
| **Cart** | Manage cart (add, remove, view, item count) |
| **Address** | Manage shipping addresses (CRUD) |
| **Coupon** | Validate discount coupons |
| **Order** | Checkout, pending orders, and order details |

All protected routes require a Sanctum auth token (`auth:sanctum`).

### Backend Tech
- Laravel 12 + Sanctum
- Vite
- PHPUnit

---

## 📱 Frontend (Flutter App)

A mobile app (Android / iOS) built with **Flutter**, using a **feature-based architecture**.

The app uses **flutter_bloc** for state management and **Freezed** for immutable models and sealed states/events, following a feature-based architecture.

### Features
- `on_boarding`
- `choose_language` (multi-language support)
- `auth` (login, signup, password recovery, Google Sign-In)
- `home`
- `items` (product listing & details)
- `search`
- `favorite`
- `cart`
- `address` (Google Maps + location picking)
- `checkout`
- `orders` (order history and tracking)

### Key Packages

Main packages used throughout the project:

**State Management**
- `flutter_bloc`
- `freezed`

**Networking**
- `http`

**Maps & Location**
- `google_maps_flutter`
- `geolocator`
- `geocoding`
- `flutter_polyline_points`

**Firebase**
- `firebase_core`
- `firebase_messaging`
- `cloud_firestore`
- `flutter_local_notifications`

**Local Storage**
- `sqflite`
- `shared_preferences`
- `flutter_secure_storage`

**Images**
- `cached_network_image`
- `image_picker`

**QR / Barcode**
- `qr_flutter`
- `mobile_scanner`

**Auth**
- `google_sign_in`

**UI Utilities**
- `responsive_builder`
- `device_preview`

---

## 🧪 Testing

| Layer | Tool |
|---|---|
| Backend | PHPUnit |
| Bloc / State | `bloc_test` |
| Mocking | Mocktail |

---

## 🖼️ Screenshots

Real screenshots from the app, available in `frontend/assets/screenshots/`:

| Login | Home | Product Details |
|---|---|---|
| ![Login](frontend/assets/screenshots/login.jpg) | ![Home](frontend/assets/screenshots/home.jpg) | ![Product Details](frontend/assets/screenshots/product_details.jpg) |

| Search | Favorites | Cart |
|---|---|---|
| ![Search](frontend/assets/screenshots/search.jpg) | ![Favorites](frontend/assets/screenshots/favorites.jpg) | ![Cart](frontend/assets/screenshots/cart.jpg) |

| Checkout | Orders | Order Details |
|---|---|---|
| ![Checkout](frontend/assets/screenshots/checkout.jpg) | ![Orders](frontend/assets/screenshots/orders.jpg) | ![Order Details](frontend/assets/screenshots/order_details.jpg) |

---

## 🎥 Demo

[![Watch Demo](https://img.youtube.com/vi/fwH_YK5l2TU/hqdefault.jpg)](https://youtube.com/shorts/fwH_YK5l2TU?si=tp8RQ-wFWWDCjjTd)

---

## 🚀 Installation

### Backend (Laravel)
```bash
cd backend
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan storage:link
php artisan serve
```

### Frontend (Flutter)
```bash
cd frontend
flutter pub get
flutter run
```

> Note: Point the app's API base URL to your backend, and connect your own Firebase project if you want push notifications to work.

---

## 🔑 Environment Variables

**Backend**
- `APP_KEY`
- `DB_DATABASE`
- `DB_USERNAME`
- `DB_PASSWORD`
- `MAIL_*`

**Frontend**
- API base URL
- Google Maps API key
- Firebase configuration (`google-services.json` / `GoogleService-Info.plist`)

---

## 🎯 Project Goals

This project was built to simulate a production-ready e-commerce application while applying modern software architecture and clean development practices.

Main goals:
- Build a scalable Flutter application
- Design a secure RESTful API
- Apply feature-based architecture
- Separate business logic from presentation
- Practice full-stack mobile development

---

## 🔮 Future Improvements

- Online payment integration
- Admin dashboard
- CI/CD pipeline
- Docker support
- Product reviews
- Dark mode

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Badr Abdullah Haje**
Flutter Software Engineer

- GitHub: [@BadrAbdu11ah](https://github.com/BadrAbdu11ah)
- Portfolio: [@my portfolio](https://tiny-sound-7e91.badrhaje2.workers.dev/)
- LinkedIn: [@badrhaje](https://www.linkedin.com/in/badr-haje-21073a39b)
- Email: [EMAIL_ADDRESS](Badrhaje2@gmail.com)