// Flutter & Third-party packages
export 'dart:async';
export 'dart:convert';
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter_dotenv/flutter_dotenv.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:gap/gap.dart';
export 'package:get/get.dart' hide Trans;
export 'package:google_fonts/google_fonts.dart';
export 'package:image_picker/image_picker.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:logger/logger.dart';
export 'package:pretty_dio_logger/pretty_dio_logger.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
export 'package:easy_localization/easy_localization.dart' hide TextDirection, MapExtension;
export 'package:skeletonizer/skeletonizer.dart';
export 'package:pull_to_refresh/pull_to_refresh.dart' hide RefreshIndicator, RefreshIndicatorState;
export 'package:dio/dio.dart' hide FormData, Response, MultipartFile;
export 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
export 'package:retrofit/retrofit.dart' hide Parser, Path, Headers;

// Configuration
export 'package:genlife_mobi/config/app_config.dart';

// Constants
export 'package:genlife_mobi/src/constants/app_colors.dart';
export 'package:genlife_mobi/src/constants/app_constants.dart';
export 'package:genlife_mobi/src/constants/app_images.dart';

// Components
export 'package:genlife_mobi/src/components/bottomsheet/app_bottom_sheet.dart';
export 'package:genlife_mobi/src/components/button/app_button.dart';
export 'package:genlife_mobi/src/components/dialog/app_dialog.dart';
export 'package:genlife_mobi/src/components/loading/app_loading.dart';
export 'package:genlife_mobi/src/components/navigation_pane/navigation_pane.dart';
export 'package:genlife_mobi/src/components/text/app_text_field.dart';
export 'package:genlife_mobi/src/components/drawer/custom_drawer.dart';
export 'package:genlife_mobi/src/components/search/app_search.dart';

// Base
export 'package:genlife_mobi/src/data/_base/api_exception.dart';
export 'package:genlife_mobi/src/data/_base/base_exception.dart';
export 'package:genlife_mobi/src/data/_base/base_error_handling.dart';
export 'package:genlife_mobi/src/data/_base/base_error.dart';
export 'package:genlife_mobi/src/data/_base/base_response.dart';
export 'package:genlife_mobi/src/data/_base/base_remote_source.dart';
export 'package:genlife_mobi/src/data/_base/error_response.dart';
export 'package:genlife_mobi/src/data/_base/network_manager.dart';

// Models

export 'package:genlife_mobi/src/data/model/home/top_categories_model.dart';

// Repositories
export 'package:genlife_mobi/src/data/repositories/home/home_repository.dart';
export 'package:genlife_mobi/src/data/repositories/home/home_repository_impl.dart';

// Services
export 'package:genlife_mobi/src/data/services/home/home_service.dart';
export 'package:genlife_mobi/src/data/services/home/home_service_api.dart';

// Shared Utilities
export 'package:genlife_mobi/src/shared/app_manager.dart';
export 'package:genlife_mobi/src/shared/app_route.dart';

// Themes
export 'package:genlife_mobi/theme/app_theme.dart';

// Utilities
export 'package:genlife_mobi/src/utils/app_logger.dart';
export 'package:genlife_mobi/src/utils/app_responsive_helper.dart';

// Authentication Screens

// Main Screens
export 'package:genlife_mobi/src/views/home/home_screen.dart';
export 'package:genlife_mobi/src/views/cart/cart_screen.dart';
export 'package:genlife_mobi/src/views/course/course_screen.dart';
export 'package:genlife_mobi/src/views/account/account_screen.dart';

// Widgets
export 'package:genlife_mobi/src/views/home/widgets/home_widgets.dart';

// Account Management Screens

// Other Screens
export 'package:genlife_mobi/src/views/splash/splash_screen.dart';

// Cubit
//-----Home-----//
export 'package:genlife_mobi/src/views/home/cubit/home_cubit.dart';
export 'package:genlife_mobi/src/views/home/cubit/home_state.dart';
