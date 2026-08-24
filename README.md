# 🛒 Electronics Store Monorepo

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Laravel](https://img.shields.io/badge/Laravel-12-red)
![License](https://img.shields.io/badge/License-MIT-green)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey)

**A production-oriented, full-stack e-commerce ecosystem** built with **Flutter** and **Laravel** — a single monorepo containing **three separate mobile apps** (Customer, Admin, Delivery) that all consume one **Laravel REST API**, backed by MySQL.

The project follows a **feature-based, Clean Architecture** approach on the frontend (BLoC + Freezed) and a role-based API design on the backend (`user`, `admin`, `delivery` route groups secured with Laravel Sanctum).

📹 [Demo Video](https://youtube.com/shorts/fwH_YK5l2TU?si=tp8RQ-wFWWDCjjTd)

---

## Table of Contents

- [Highlights](#-highlights)
- [Apps in this Monorepo](#-apps-in-this-monorepo)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Architecture](#️-architecture)
- [Backend (Laravel API)](#️-backend-laravel-api)
- [Frontend Apps (Flutter)](#-frontend-apps-flutter)
- [Testing](#-testing)
- [Screenshots](#️-screenshots)
- [Demo](#-demo)
- [Installation](#-installation)
- [Environment Variables](#-environment-variables)
- [Project Goals](#-project-goals)
- [Future Improvements](#-future-improvements)
- [License](#-license)
- [Author](#-author)

---

## ✨ Highlights

- **3 Flutter apps + 1 Laravel API** in one monorepo (Customer, Admin, Delivery)
- Feature-based, Clean Architecture on the frontend
- **BLoC** state management with **Freezed** immutable states/events
- Role-based REST API (`/user`, `/admin`, `/delivery`) secured with **Laravel Sanctum**
- Full order lifecycle: customer checkout → admin approval → delivery fulfillment
- Firebase Cloud Messaging (push notifications) & Firestore
- Google Maps + Geolocation for address selection and delivery
- Google Sign-In
- Multi-language support (`choose_language` feature in every app)
- Unit & BLoC tests (`bloc_test`, Mocktail, PHPUnit)

---

## 📦 Apps in this Monorepo

| App | Folder | Purpose |
|---|---|---|
| 🛍️ **Customer App** | `frontend_user/` | Browse products, search, favorites, cart, checkout, address management, order tracking |
| 🛠️ **Admin App** | `frontend_admin/` | Manage categories & products, approve/reject orders, view order archive |
| 🚚 **Delivery App** | `frontend_delivery/` | View assigned orders, accept/approve deliveries, mark orders as done |
| ⚙️ **Backend API** | `backend/` | Laravel 12 REST API serving all three apps |

Each app is an independent Flutter project (own `pubspec.yaml`, own package name) that talks to the same backend — this lets each role be built, tested, and deployed separately while sharing one data source.

---

## 🧰 Tech Stack

| Frontend | Backend | Database | Services |
|---|---|---|---|
| Flutter (Dart) | Laravel 12 (PHP 8.2+) | MySQL | Firebase (FCM, Firestore), Google Maps |

---

## 📁 Project Structure

```
electronics-store-monorepo/
├── backend/              # Laravel 12 REST API
├── frontend_user/        # Customer-facing Flutter app
├── frontend_admin/       # Admin dashboard Flutter app
└── frontend_delivery/    # Delivery agent Flutter app
```

Each `frontend_*` app follows the same internal layout:

```
lib/
├── core/            # Shared utilities, constants, theming, network client
├── data/            # Data sources & repositories
├── features/        # Feature-based modules (see below)
├── widgets/         # Shared/reusable widgets
├── app_router.dart
├── app_translations.dart
├── api_endpoints.dart
└── main.dart
```

---

## 🏛️ Architecture

```
                     Firebase (FCM / Firestore)
                              │
                     Push Notifications
                              ▼
┌───────────────┐   ┌───────────────┐   ┌───────────────┐
│ Customer App  │   │  Admin App    │   │ Delivery App  │
└───────┬───────┘   └───────┬───────┘   └───────┬───────┘
        │                   │                   │
        └────────────┬──────┴────────┬──────────┘
                      ▼               
              REST API (Laravel, Sanctum-secured)
                      │
                    MySQL
```

### Frontend Layers (per app)

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
REST API → Laravel API
```

---

## ⚙️ Backend (Laravel API)

Built with **Laravel 12** and **PHP 8.2+**, providing one REST API consumed by all three apps, secured with **Laravel Sanctum** (token-based auth) and split into three route groups: `/api/user`, `/api/admin`, `/api/delivery`.

### Core Models
`User` · `Item` · `Category` · `Cart` · `Favorite` · `Address` · `Coupon` · `Order` · `Notification` · `Setting`

### Main API Endpoints

**User (Customer)**
| Group | Description |
|---|---|
| Auth | Login / Signup / Google login / Password recovery (email + code verification) |
| Home | Store home page data, offers |
| Items | Browse product details, search |
| Favorite | Add / remove / view favorites |
| Cart | Add, remove, view, item count |
| Address | Manage shipping addresses (CRUD) |
| Coupon | Validate discount coupons |
| Order | Checkout, pending orders, archive, order details, rating |
| Notification | View notifications |

**Admin**
| Group | Description |
|---|---|
| Auth | Login / logout / password recovery |
| Categories | Add / edit / delete / view |
| Items | Add / edit / delete / view |
| Orders | View pending / accepted / archived orders, approve, reject |

**Delivery**
| Group | Description |
|---|---|
| Auth | Login / logout / password recovery |
| Orders | View pending / accepted / archived orders, approve, mark as done |

All protected routes require a Sanctum auth token (`auth:sanctum`).

### Backend Tech
- Laravel 12 + Sanctum
- Vite
- PHPUnit

---

## 📱 Frontend Apps (Flutter)

All three apps share the same architecture (feature-based + BLoC + Freezed) and many of the same packages, but expose different feature sets based on their role.

### Features by App

| Feature | Customer | Admin | Delivery |
|---|:---:|:---:|:---:|
| Onboarding | ✅ | – | – |
| Language selection | ✅ | ✅ | ✅ |
| Auth (login/signup/Google) | ✅ | ✅ | ✅ |
| Home | ✅ | ✅ | ✅ |
| Items browsing & search | ✅ | – | – |
| Categories & product management | – | ✅ | – |
| Favorites | ✅ | – | – |
| Cart & Checkout | ✅ | – | – |
| Address (Maps + geolocation) | ✅ | – | – |
| Orders (place/track) | ✅ | – | – |
| Orders (approve/reject) | – | ✅ | – |
| Orders (accept/complete deliveries) | – | – | ✅ |

### Key Packages (shared across apps)

**State Management**
- `flutter_bloc`, `freezed`, `fpdart`

**Networking**
- `http`

**Maps & Location**
- `google_maps_flutter`, `geolocator`, `geocoding`, `flutter_polyline_points`

**Firebase**
- `firebase_core`, `firebase_messaging`, `firebase_auth`, `cloud_firestore`, `flutter_local_notifications`

**Local Storage**
- `sqflite`, `shared_preferences`, `flutter_secure_storage`

**Images & UI**
- `cached_network_image`, `image_picker`, `flutter_svg`, `font_awesome_flutter`, `show_up_animation`, `auto_animated`, `device_preview`, `responsive_builder`

**QR / Barcode**
- `qr_flutter`, `mobile_scanner`

**Auth**
- `google_sign_in`

---

## 🧪 Testing

| Layer | Tool |
|---|---|
| Backend | PHPUnit |
| BLoC / State | `bloc_test` |
| Mocking | Mocktail |

---

## 🖼️ Screenshots

Screenshots are available in each app's `assets/screenshots/` folder.

| Login | Home | Product Details |
|---|---|---|
| ![Login](frontend_user/assets/screenshots/login.jpg) | ![Home](frontend_user/assets/screenshots/home.jpg) | ![Product Details](frontend_user/assets/screenshots/product_details.jpg) |

| Search | Favorites | Cart |
|---|---|---|
| ![Search](frontend_user/assets/screenshots/search.jpg) | ![Favorites](frontend_user/assets/screenshots/favorites.jpg) | ![Cart](frontend_user/assets/screenshots/cart.jpg) |

| Checkout | Orders | Order Details |
|---|---|---|
| ![Checkout](frontend_user/assets/screenshots/checkout.jpg) | ![Orders](frontend_user/assets/screenshots/orders.jpg) | ![Order Details](frontend_user/assets/screenshots/order_details.jpg) |

> Note: Add dedicated Admin and Delivery app screenshots to `frontend_admin/assets/screenshots/` and `frontend_delivery/assets/screenshots/` to showcase those apps as well — they currently mirror the customer app's placeholder images.

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

### Customer App
```bash
cd frontend_user
flutter pub get
flutter run
```

### Admin App
```bash
cd frontend_admin
flutter pub get
flutter run
```

### Delivery App
```bash
cd frontend_delivery
flutter pub get
flutter run
```

> Note: Point each app's API base URL (`api_endpoints.dart`) to your backend, and connect your own Firebase project per app if you want push notifications to work.

---

## 🔑 Environment Variables

**Backend**
- `APP_KEY`
- `DB_DATABASE`
- `DB_USERNAME`
- `DB_PASSWORD`
- `MAIL_*`

**Each Flutter app**
- API base URL
- Google Maps API key
- Firebase configuration (`google-services.json` / `GoogleService-Info.plist`)

---

## 🎯 Project Goals

This project was built to simulate a production-ready, multi-role e-commerce ecosystem while applying modern software architecture and clean development practices across an entire operational flow — from customer purchase to admin approval to delivery fulfillment.

Main goals:
- Build three scalable, role-specific Flutter applications from a shared architecture
- Design a secure, role-based RESTful API
- Apply feature-based Clean Architecture consistently across apps
- Separate business logic from presentation via BLoC
- Practice full-stack, multi-app mobile development in a monorepo

---

## 🔮 Future Improvements

- Online payment integration
- Web-based admin dashboard (in addition to the mobile admin app)
- CI/CD pipeline
- Docker support
- Product reviews
- Dark mode
- Real-time order tracking on map (delivery ↔ customer)

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Badr Abdullah Haje**
Flutter Software Engineer

- GitHub: [@BadrAbdu11ah](https://github.com/BadrAbdu11ah)
- Portfolio: [my portfolio](https://tiny-sound-7e91.badrhaje2.workers.dev/)
- LinkedIn: [badrhaje](https://www.linkedin.com/in/badr-haje-21073a39b)
- Email: Badrhaje2@gmail.com