import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/home_screen.dart';
import 'package:movie_app/search_screen.dart';
import 'package:movie_app/splash_screen.dart';
import 'package:movie_app/movie_app.dart';

void main() {
  testWidgets('Movie App UI and Navigation Test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MovieApp());

    // Verify Splash Screen is displayed.
    expect(find.byType(SplashScreen), findsOneWidget);

    // Wait for the navigation to Home screen.
    await tester.pumpAndSettle();

    // Verify Home Screen is displayed after Splash.
    expect(find.byType(HomeScreen), findsOneWidget);

    // Check if Bottom Navigation bar is present.
    expect(find.byType(BottomNavigationBar), findsOneWidget);

    // Tap on the Search icon in Bottom Navigation.
    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    // Verify Search Screen is displayed after tapping on Search.
    expect(find.byType(SearchScreen), findsOneWidget);

    // Return to Home Screen.
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();

    // Verify we’re back to Home Screen.
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
