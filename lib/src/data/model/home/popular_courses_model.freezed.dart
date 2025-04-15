// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_courses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PopularCoursesModel _$PopularCoursesModelFromJson(Map<String, dynamic> json) {
  return _PopularCoursesModel.fromJson(json);
}

/// @nodoc
mixin _$PopularCoursesModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get assigned_instructor => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get discount_price => throw _privateConstructorUsedError;

  /// Serializes this PopularCoursesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PopularCoursesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularCoursesModelCopyWith<PopularCoursesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCoursesModelCopyWith<$Res> {
  factory $PopularCoursesModelCopyWith(
    PopularCoursesModel value,
    $Res Function(PopularCoursesModel) then,
  ) = _$PopularCoursesModelCopyWithImpl<$Res, PopularCoursesModel>;
  @useResult
  $Res call({
    int? id,
    String title,
    String image,
    String thumbnail,
    String assigned_instructor,
    int price,
    int discount_price,
  });
}

/// @nodoc
class _$PopularCoursesModelCopyWithImpl<$Res, $Val extends PopularCoursesModel>
    implements $PopularCoursesModelCopyWith<$Res> {
  _$PopularCoursesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularCoursesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? image = null,
    Object? thumbnail = null,
    Object? assigned_instructor = null,
    Object? price = null,
    Object? discount_price = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbnail:
                null == thumbnail
                    ? _value.thumbnail
                    : thumbnail // ignore: cast_nullable_to_non_nullable
                        as String,
            assigned_instructor:
                null == assigned_instructor
                    ? _value.assigned_instructor
                    : assigned_instructor // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as int,
            discount_price:
                null == discount_price
                    ? _value.discount_price
                    : discount_price // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PopularCoursesModelImplCopyWith<$Res>
    implements $PopularCoursesModelCopyWith<$Res> {
  factory _$$PopularCoursesModelImplCopyWith(
    _$PopularCoursesModelImpl value,
    $Res Function(_$PopularCoursesModelImpl) then,
  ) = __$$PopularCoursesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String title,
    String image,
    String thumbnail,
    String assigned_instructor,
    int price,
    int discount_price,
  });
}

/// @nodoc
class __$$PopularCoursesModelImplCopyWithImpl<$Res>
    extends _$PopularCoursesModelCopyWithImpl<$Res, _$PopularCoursesModelImpl>
    implements _$$PopularCoursesModelImplCopyWith<$Res> {
  __$$PopularCoursesModelImplCopyWithImpl(
    _$PopularCoursesModelImpl _value,
    $Res Function(_$PopularCoursesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularCoursesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? image = null,
    Object? thumbnail = null,
    Object? assigned_instructor = null,
    Object? price = null,
    Object? discount_price = null,
  }) {
    return _then(
      _$PopularCoursesModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbnail:
            null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                    as String,
        assigned_instructor:
            null == assigned_instructor
                ? _value.assigned_instructor
                : assigned_instructor // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as int,
        discount_price:
            null == discount_price
                ? _value.discount_price
                : discount_price // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularCoursesModelImpl
    with DiagnosticableTreeMixin
    implements _PopularCoursesModel {
  const _$PopularCoursesModelImpl({
    this.id,
    this.title = '',
    this.image = '',
    this.thumbnail = '',
    this.assigned_instructor = '',
    this.price = 0,
    this.discount_price = 0,
  });

  factory _$PopularCoursesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularCoursesModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String thumbnail;
  @override
  @JsonKey()
  final String assigned_instructor;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final int discount_price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PopularCoursesModel(id: $id, title: $title, image: $image, thumbnail: $thumbnail, assigned_instructor: $assigned_instructor, price: $price, discount_price: $discount_price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularCoursesModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('assigned_instructor', assigned_instructor))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('discount_price', discount_price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularCoursesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.assigned_instructor, assigned_instructor) ||
                other.assigned_instructor == assigned_instructor) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount_price, discount_price) ||
                other.discount_price == discount_price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    image,
    thumbnail,
    assigned_instructor,
    price,
    discount_price,
  );

  /// Create a copy of PopularCoursesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularCoursesModelImplCopyWith<_$PopularCoursesModelImpl> get copyWith =>
      __$$PopularCoursesModelImplCopyWithImpl<_$PopularCoursesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularCoursesModelImplToJson(this);
  }
}

abstract class _PopularCoursesModel implements PopularCoursesModel {
  const factory _PopularCoursesModel({
    final int? id,
    final String title,
    final String image,
    final String thumbnail,
    final String assigned_instructor,
    final int price,
    final int discount_price,
  }) = _$PopularCoursesModelImpl;

  factory _PopularCoursesModel.fromJson(Map<String, dynamic> json) =
      _$PopularCoursesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get thumbnail;
  @override
  String get assigned_instructor;
  @override
  int get price;
  @override
  int get discount_price;

  /// Create a copy of PopularCoursesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularCoursesModelImplCopyWith<_$PopularCoursesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
