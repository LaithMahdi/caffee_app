# ☕ Coffee App

A beautiful and intuitive coffee ordering mobile application built with Flutter. This app provides a seamless experience for coffee lovers to browse, explore, and order their favorite coffee beverages.

## 📱 Features

- **Splash Screen**: Welcoming screen with the app logo
- **Onboarding**: Introduction screen with beautiful imagery and call-to-action
- **Home Screen**: 
  - Browse coffee products in an organized grid layout
  - Search functionality to find specific coffee drinks
  - Category filtering (All Coffee, Macchiato, Latte, Americano)
  - Product ratings and pricing display
- **Product Detail Screen**:
  - Detailed product information with high-quality images
  - Product ratings and reviews count
  - Size selection (Small, Medium, Large)
  - Drink-in or Take-away options
  - Add to cart functionality
- **Beautiful UI**: Clean, modern design with custom fonts and colors

## 🏗️ Project Structure

```
lib/
├── constants.dart          # App-wide constants and theme colors
├── main.dart              # App entry point and routing
├── data/
│   └── dummy.dart         # Sample data for categories and products
├── models/
│   ├── category_model.dart # Category data model
│   └── product_model.dart  # Product data model
├── screens/
│   ├── splash_screen.dart      # Initial loading screen
│   ├── onboarding_screen.dart  # App introduction screen
│   ├── home_screen.dart        # Main product browsing screen
│   └── product_detail_screen.dart # Individual product details
└── widgets/
    └── primary_button.dart     # Reusable button component
```

## 🎨 Design Features

- **Custom Font**: Montserrat font family for consistent typography
- **Brand Colors**: Primary brown color scheme (#C67C4E) perfect for coffee branding
- **Responsive Design**: Optimized for different screen sizes
- **Smooth Navigation**: Intuitive routing between screens
- **Interactive Elements**: Tap gestures and state management

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/LaithMahdi/caffee_app.git
   cd caffee_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Dependencies

- **flutter_svg: ^2.2.1** - For SVG icon support
- **cupertino_icons: ^1.0.8** - iOS-style icons

## 📂 Assets

The app includes various assets organized in the `assets/` directory:

- **Images**: Product photos, onboarding background, logo
- **Icons**: SVG icons for search, heart, star, delivery options
- **Fonts**: Montserrat font family (Regular, Medium, SemiBold, Bold)

## 🛠️ Development

### Adding New Products

Products are currently defined in `lib/data/dummy.dart`. To add new products:

1. Add product images to `assets/images/`
2. Update the `products` list in `dummy.dart`
3. Ensure proper category assignment

### Customizing Theme

The app's theme can be customized in:
- `lib/constants.dart` - Colors and constants
- `pubspec.yaml` - Font families and assets

### Screen Navigation

The app uses named routes defined in `main.dart`:
- `/` - Splash Screen
- `/onboarding` - Onboarding Screen  
- `/home` - Home Screen
- `/product-detail` - Product Detail Screen

## 🎯 Future Enhancements

- [ ] User authentication and profiles
- [ ] Shopping cart functionality
- [ ] Order history and tracking
- [ ] Payment integration
- [ ] Store locator
- [ ] Push notifications
- [ ] Favorites/Wishlist feature
- [ ] Reviews and ratings system
- [ ] Backend API integration

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 📞 Contact

**Laith Mahdi** - [@LaithMahdi](https://github.com/LaithMahdi)

Project Link: [https://github.com/LaithMahdi/caffee_app](https://github.com/LaithMahdi/caffee_app)

---

*Made with ❤️ and ☕ by Laith Mahdi*
