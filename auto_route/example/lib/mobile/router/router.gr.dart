// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i13;

import '../screens/books/book_details_page.dart' as _i8;
import '../screens/books/book_list_page.dart' as _i7;
import '../screens/home_page.dart' as _i3;
import '../screens/login_page.dart' as _i5;
import '../screens/profile/my_books_page.dart' as _i10;
import '../screens/profile/profile_page.dart' as _i9;
import '../screens/settings.dart' as _i6;
import '../screens/user-data/data_collector.dart' as _i4;
import '../screens/user-data/sinlge_field_page.dart' as _i11;
import '../screens/user-data/user_data_page.dart' as _i12;
import 'auth_guard.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter({required this.authGuard});

  final _i2.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.HomePage());
    },
    UserDataCollectorRoute.name: (entry) {
      var args = entry.routeData.argsAs<UserDataCollectorRouteArgs>(
          orElse: () => UserDataCollectorRouteArgs());
      return _i1.MaterialPageX(
          entry: entry,
          child: _i4.UserDataCollectorPage(
              key: args.key, onResult: args.onResult));
    },
    LoginRoute.name: (entry) {
      var args = entry.routeData
          .argsAs<LoginRouteArgs>(orElse: () => LoginRouteArgs());
      return _i1.MaterialPageX(
          entry: entry,
          child: _i5.LoginPage(
              key: args.key,
              onLoginResult: args.onLoginResult,
              showBackButton: args.showBackButton));
    },
    BooksTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    ProfileTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SettingsTab.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.SettingsPage());
    },
    BookListRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.BookListPage());
    },
    BookDetailsRoute.name: (entry) {
      var pathParams = entry.routeData.pathParams;
      var args = entry.routeData.argsAs<BookDetailsRouteArgs>(
          orElse: () => BookDetailsRouteArgs(id: pathParams.getInt('id', -1)));
      return _i1.MaterialPageX(
          entry: entry, child: _i8.BookDetailsPage(id: args.id));
    },
    ProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.ProfilePage());
    },
    MyBooksRoute.name: (entry) {
      var queryParams = entry.routeData.queryParams;
      var args = entry.routeData.argsAs<MyBooksRouteArgs>(
          orElse: () => MyBooksRouteArgs(
              filter: queryParams.getString('filter', 'none')));
      return _i1.MaterialPageX(
          entry: entry,
          child: _i10.MyBooksPage(key: args.key, filter: args.filter));
    },
    SingleFieldRoute.name: (entry) {
      var args = entry.routeData.argsAs<SingleFieldRouteArgs>();
      return _i1.CustomPage(
          entry: entry,
          child: _i11.SingleFieldPage(
              key: args.key,
              message: args.message,
              willPopMessage: args.willPopMessage,
              onNext: args.onNext),
          transitionsBuilder: _i1.TransitionsBuilders.slideRightWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    UserDataRoute.name: (entry) {
      var args = entry.routeData
          .argsAs<UserDataRouteArgs>(orElse: () => UserDataRouteArgs());
      return _i1.CustomPage(
          entry: entry,
          child: _i12.UserDataPage(key: args.key, onResult: args.onResult),
          transitionsBuilder: _i1.TransitionsBuilders.slideRightWithFade,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name,
            path: '/',
            usesTabsRouter: true,
            guards: [
              authGuard
            ],
            children: [
              _i1.RouteConfig('#redirect',
                  path: '', redirectTo: 'books', fullMatch: true),
              _i1.RouteConfig(BooksTab.name, path: 'books', children: [
                _i1.RouteConfig(BookListRoute.name, path: ''),
                _i1.RouteConfig(BookDetailsRoute.name, path: ':id')
              ]),
              _i1.RouteConfig(ProfileTab.name, path: 'profile', children: [
                _i1.RouteConfig(ProfileRoute.name, path: ''),
                _i1.RouteConfig(MyBooksRoute.name, path: 'books')
              ]),
              _i1.RouteConfig(SettingsTab.name, path: 'settings')
            ]),
        _i1.RouteConfig(UserDataCollectorRoute.name,
            path: '/user-data',
            children: [
              _i1.RouteConfig(SingleFieldRoute.name, path: 'single-field-page'),
              _i1.RouteConfig(UserDataRoute.name, path: 'user-data-page')
            ]),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

class UserDataCollectorRoute
    extends _i1.PageRouteInfo<UserDataCollectorRouteArgs> {
  UserDataCollectorRoute(
      {_i13.Key? key,
      dynamic Function(_i4.UserData)? onResult,
      List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/user-data',
            args: UserDataCollectorRouteArgs(key: key, onResult: onResult),
            initialChildren: children);

  static const String name = 'UserDataCollectorRoute';
}

class UserDataCollectorRouteArgs {
  const UserDataCollectorRouteArgs({this.key, this.onResult});

  final _i13.Key? key;

  final dynamic Function(_i4.UserData)? onResult;
}

class LoginRoute extends _i1.PageRouteInfo<LoginRouteArgs> {
  LoginRoute(
      {_i13.Key? key,
      void Function(bool)? onLoginResult,
      bool showBackButton = true})
      : super(name,
            path: '/login',
            args: LoginRouteArgs(
                key: key,
                onLoginResult: onLoginResult,
                showBackButton: showBackButton));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs(
      {this.key, this.onLoginResult, this.showBackButton = true});

  final _i13.Key? key;

  final void Function(bool)? onLoginResult;

  final bool showBackButton;
}

class BooksTab extends _i1.PageRouteInfo {
  const BooksTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'books', initialChildren: children);

  static const String name = 'BooksTab';
}

class ProfileTab extends _i1.PageRouteInfo {
  const ProfileTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

class SettingsTab extends _i1.PageRouteInfo {
  const SettingsTab() : super(name, path: 'settings');

  static const String name = 'SettingsTab';
}

class BookListRoute extends _i1.PageRouteInfo {
  const BookListRoute() : super(name, path: '');

  static const String name = 'BookListRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({int id = -1})
      : super(name,
            path: ':id',
            args: BookDetailsRouteArgs(id: id),
            params: {'id': id});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.id = -1});

  final int id;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

class MyBooksRoute extends _i1.PageRouteInfo<MyBooksRouteArgs> {
  MyBooksRoute({_i13.Key? key, String filter = 'none'})
      : super(name,
            path: 'books',
            args: MyBooksRouteArgs(key: key, filter: filter),
            queryParams: {'filter': filter});

  static const String name = 'MyBooksRoute';
}

class MyBooksRouteArgs {
  const MyBooksRouteArgs({this.key, this.filter = 'none'});

  final _i13.Key? key;

  final String filter;
}

class SingleFieldRoute extends _i1.PageRouteInfo<SingleFieldRouteArgs> {
  SingleFieldRoute(
      {_i13.Key? key,
      required String message,
      required String willPopMessage,
      required void Function(String) onNext})
      : super(name,
            path: 'single-field-page',
            args: SingleFieldRouteArgs(
                key: key,
                message: message,
                willPopMessage: willPopMessage,
                onNext: onNext));

  static const String name = 'SingleFieldRoute';
}

class SingleFieldRouteArgs {
  const SingleFieldRouteArgs(
      {this.key,
      required this.message,
      required this.willPopMessage,
      required this.onNext});

  final _i13.Key? key;

  final String message;

  final String willPopMessage;

  final void Function(String) onNext;
}

class UserDataRoute extends _i1.PageRouteInfo<UserDataRouteArgs> {
  UserDataRoute({_i13.Key? key, dynamic Function(_i4.UserData)? onResult})
      : super(name,
            path: 'user-data-page',
            args: UserDataRouteArgs(key: key, onResult: onResult));

  static const String name = 'UserDataRoute';
}

class UserDataRouteArgs {
  const UserDataRouteArgs({this.key, this.onResult});

  final _i13.Key? key;

  final dynamic Function(_i4.UserData)? onResult;
}
