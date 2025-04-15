// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  List<TopCategoriesModel> get topCategories =>
      throw _privateConstructorUsedError;
  List<PopularCoursesModel> get popularCourses =>
      throw _privateConstructorUsedError;
  TopCategoriesModel? get category => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    HomeStatus status,
    List<TopCategoriesModel> topCategories,
    List<PopularCoursesModel> popularCourses,
    TopCategoriesModel? category,
    String message,
  });

  $TopCategoriesModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? topCategories = null,
    Object? popularCourses = null,
    Object? category = freezed,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as HomeStatus,
            topCategories:
                null == topCategories
                    ? _value.topCategories
                    : topCategories // ignore: cast_nullable_to_non_nullable
                        as List<TopCategoriesModel>,
            popularCourses:
                null == popularCourses
                    ? _value.popularCourses
                    : popularCourses // ignore: cast_nullable_to_non_nullable
                        as List<PopularCoursesModel>,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as TopCategoriesModel?,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopCategoriesModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $TopCategoriesModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    HomeStatus status,
    List<TopCategoriesModel> topCategories,
    List<PopularCoursesModel> popularCourses,
    TopCategoriesModel? category,
    String message,
  });

  @override
  $TopCategoriesModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? topCategories = null,
    Object? popularCourses = null,
    Object? category = freezed,
    Object? message = null,
  }) {
    return _then(
      _$HomeStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as HomeStatus,
        topCategories:
            null == topCategories
                ? _value._topCategories
                : topCategories // ignore: cast_nullable_to_non_nullable
                    as List<TopCategoriesModel>,
        popularCourses:
            null == popularCourses
                ? _value._popularCourses
                : popularCourses // ignore: cast_nullable_to_non_nullable
                    as List<PopularCoursesModel>,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as TopCategoriesModel?,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl({
    this.status = HomeStatus.initial,
    final List<TopCategoriesModel> topCategories = const [],
    final List<PopularCoursesModel> popularCourses = const [],
    this.category,
    this.message = '',
  }) : _topCategories = topCategories,
       _popularCourses = popularCourses;

  @override
  @JsonKey()
  final HomeStatus status;
  final List<TopCategoriesModel> _topCategories;
  @override
  @JsonKey()
  List<TopCategoriesModel> get topCategories {
    if (_topCategories is EqualUnmodifiableListView) return _topCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCategories);
  }

  final List<PopularCoursesModel> _popularCourses;
  @override
  @JsonKey()
  List<PopularCoursesModel> get popularCourses {
    if (_popularCourses is EqualUnmodifiableListView) return _popularCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCourses);
  }

  @override
  final TopCategoriesModel? category;
  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, topCategories: $topCategories, popularCourses: $popularCourses, category: $category, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('topCategories', topCategories))
      ..add(DiagnosticsProperty('popularCourses', popularCourses))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._topCategories,
              _topCategories,
            ) &&
            const DeepCollectionEquality().equals(
              other._popularCourses,
              _popularCourses,
            ) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_topCategories),
    const DeepCollectionEquality().hash(_popularCourses),
    category,
    message,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final HomeStatus status,
    final List<TopCategoriesModel> topCategories,
    final List<PopularCoursesModel> popularCourses,
    final TopCategoriesModel? category,
    final String message,
  }) = _$HomeStateImpl;

  @override
  HomeStatus get status;
  @override
  List<TopCategoriesModel> get topCategories;
  @override
  List<PopularCoursesModel> get popularCourses;
  @override
  TopCategoriesModel? get category;
  @override
  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
