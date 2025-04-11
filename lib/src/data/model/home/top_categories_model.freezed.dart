// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TopCategoriesModel _$TopCategoriesModelFromJson(Map<String, dynamic> json) {
  return _TopCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get course_count => throw _privateConstructorUsedError;

  /// Serializes this TopCategoriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopCategoriesModelCopyWith<TopCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesModelCopyWith<$Res> {
  factory $TopCategoriesModelCopyWith(
    TopCategoriesModel value,
    $Res Function(TopCategoriesModel) then,
  ) = _$TopCategoriesModelCopyWithImpl<$Res, TopCategoriesModel>;
  @useResult
  $Res call({int? id, String name, int course_count});
}

/// @nodoc
class _$TopCategoriesModelCopyWithImpl<$Res, $Val extends TopCategoriesModel>
    implements $TopCategoriesModelCopyWith<$Res> {
  _$TopCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? course_count = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            course_count:
                null == course_count
                    ? _value.course_count
                    : course_count // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopCategoriesModelImplCopyWith<$Res>
    implements $TopCategoriesModelCopyWith<$Res> {
  factory _$$TopCategoriesModelImplCopyWith(
    _$TopCategoriesModelImpl value,
    $Res Function(_$TopCategoriesModelImpl) then,
  ) = __$$TopCategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, int course_count});
}

/// @nodoc
class __$$TopCategoriesModelImplCopyWithImpl<$Res>
    extends _$TopCategoriesModelCopyWithImpl<$Res, _$TopCategoriesModelImpl>
    implements _$$TopCategoriesModelImplCopyWith<$Res> {
  __$$TopCategoriesModelImplCopyWithImpl(
    _$TopCategoriesModelImpl _value,
    $Res Function(_$TopCategoriesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? course_count = null,
  }) {
    return _then(
      _$TopCategoriesModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        course_count:
            null == course_count
                ? _value.course_count
                : course_count // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCategoriesModelImpl
    with DiagnosticableTreeMixin
    implements _TopCategoriesModel {
  const _$TopCategoriesModelImpl({
    this.id,
    this.name = '',
    this.course_count = 0,
  });

  factory _$TopCategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int course_count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopCategoriesModel(id: $id, name: $name, course_count: $course_count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopCategoriesModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('course_count', course_count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.course_count, course_count) ||
                other.course_count == course_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, course_count);

  /// Create a copy of TopCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoriesModelImplCopyWith<_$TopCategoriesModelImpl> get copyWith =>
      __$$TopCategoriesModelImplCopyWithImpl<_$TopCategoriesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesModelImplToJson(this);
  }
}

abstract class _TopCategoriesModel implements TopCategoriesModel {
  const factory _TopCategoriesModel({
    final int? id,
    final String name,
    final int course_count,
  }) = _$TopCategoriesModelImpl;

  factory _TopCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  int get course_count;

  /// Create a copy of TopCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopCategoriesModelImplCopyWith<_$TopCategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
