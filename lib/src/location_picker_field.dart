import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'bloc.dart';
import 'location_model.dart';
import 'map_view.dart';
import 'map_view_settings.dart';
import 'options.dart';

class _BaseFormField<T> extends StatefulWidget {
  final T? initialValue;
  final Function(FormFieldState<T> field, SelectedLocation selectedLocation)
      onDone;
  final FormFieldSetter<T>? onSaved;
  final FormFieldValidator<T>? validator;
  final InputDecoration decoration;
  final Widget? removeIcon;
  final bool Function(T? value) isEmpty;
  final Widget Function(T? value) display;
  final OpenMapState Function(T? value) state;
  final OpenMapOptions Function(T? value) options;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final FocusNode? focusNode;
  final bool expands;
  final Function(FormFieldState<T> field) onRemove;
  const _BaseFormField({
    Key? key,
    required this.initialValue,
    required this.onDone,
    required this.onSaved,
    required this.validator,
    required this.removeIcon,
    required this.isEmpty,
    required this.state,
    required this.options,
    required this.decoration,
    required this.textStyle,
    required this.textAlign,
    required this.textAlignVertical,
    required this.focusNode,
    required this.expands,
    required this.display,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<_BaseFormField<T>> createState() => __BaseFormFieldState<T>();
}

class __BaseFormFieldState<T> extends State<_BaseFormField<T>> {
  FocusNode? _node;
  bool _isHovering = false;
  bool _isFocused = false;
  FocusNode get _effectiveNode {
    if (widget.focusNode != null) return widget.focusNode!;
    return _node ??= FocusNode();
  }

  void _onFocusChanged() {
    var focused = _effectiveNode.hasFocus;
    if (mounted && focused != _isFocused) {
      setState(() {
        _isFocused = focused;
      });
    }
  }

  @override
  void didChangeDependencies() {
    _effectiveNode.removeListener(_onFocusChanged);
    _effectiveNode.addListener(_onFocusChanged);
    _onFocusChanged();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _effectiveNode.removeListener(_onFocusChanged);
    _node?.dispose();
    super.dispose();
  }

  void _handleHover(bool hovering) {
    if (hovering != _isHovering && mounted) {
      setState(() {
        _isHovering = hovering;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      validator: widget.validator,
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      builder: (FormFieldState<T> field) {
        var effectiveDecoration = widget.decoration
            .applyDefaults(Theme.of(context).inputDecorationTheme);
        var removeIcon = widget.removeIcon;
        var _showRemove = !widget.isEmpty(field.value) && removeIcon != null;
        effectiveDecoration = effectiveDecoration.copyWith(
            errorText: field.errorText,
            prefixIcon: effectiveDecoration.prefixIcon ??
                const Icon(Icons.my_location_rounded),
            suffixIcon: _showRemove
                ? IconButton(
                    onPressed: () {
                      widget.onRemove(field);
                    },
                    icon: removeIcon!,
                    color: Theme.of(context).errorColor,
                  )
                : effectiveDecoration.suffixIcon);

        return ClipPath(
          clipper: ShapeBorderClipper(
              shape:
                  effectiveDecoration.border ?? const RoundedRectangleBorder()),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _pick(field),
                child: MouseRegion(
                  onEnter: (PointerEnterEvent event) => _handleHover(true),
                  onExit: (PointerExitEvent event) => _handleHover(false),
                  child: InputDecorator(
                    baseStyle: widget.textStyle,
                    decoration: effectiveDecoration,
                    isEmpty: widget.isEmpty(field.value),
                    textAlign: widget.textAlign,
                    textAlignVertical: widget.textAlignVertical,
                    isFocused: _isFocused,
                    isHovering: _isHovering,
                    expands: widget.expands,
                    child: widget.display(field.value),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _pick(FormFieldState<T> field) async {
    var context = field.context;

    var _bloc = _OpenMapBloc(widget.state(field.value));
    try {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => OpenStreetMaps(
            options: widget.options(field.value),
            bloc: _bloc,
            onDone: (value) {
              widget.onDone.call(field, value);
              Navigator.of(_).pop();
            },
          ),
        ),
      );
      _bloc.close();
    } catch (e) {
      if (mounted) {
        OpenMapSettings.of(context)?.onError?.call(context, e);
      }
      _bloc.close();
    }
  }
}

/// Pick single location and it ui is same as Inputs in your app
/// You can set your preferred options for map using `OpenMapSettings`
class OpenMapPicker extends StatelessWidget {
  final FormattedLocation? initialValue;
  final FormFieldSetter<FormattedLocation>? onChanged;
  final FormFieldSetter<FormattedLocation>? onSaved;
  final FormFieldValidator<FormattedLocation>? validator;
  final InputDecoration decoration;
  final Widget? removeIcon;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final FocusNode? focusNode;
  final bool expands;
  final OpenMapOptions? options;

  const OpenMapPicker({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.removeIcon = const Icon(Icons.delete_rounded),
    this.decoration = const InputDecoration(
      prefixIcon: Icon(Icons.my_location_rounded),
      hintText: "My Location",
    ),
    this.textStyle,
    this.textAlign,
    this.textAlignVertical,
    this.focusNode,
    this.expands = false,
    this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseFormField<FormattedLocation>(
      state: (value) => OpenMapState.selected(SelectedLocation.single(value)),
      decoration: decoration,
      display: (FormattedLocation? value) => Text(value?.toString() ?? ''),
      expands: expands,
      focusNode: focusNode,
      initialValue: initialValue,
      options: (FormattedLocation? value) {
        if (value == null) {
          return options ?? OpenMapOptions();
        } else {
          return options?.copyWithBounds(bounds: value.boundingBox) ??
              OpenMapOptions.bounds(bounds: value.boundingBox);
        }
      },
      onDone: (field, value) {
        field.didChange(value.whenOrNull<FormattedLocation?>(
          single: (selected) {
            return selected;
          },
        ));
        onChanged?.call(field.value);
      },
      onRemove: (field) {
        field.didChange(null);
        onChanged?.call(field.value);
      },
      onSaved: onSaved,
      removeIcon: removeIcon,
      isEmpty: (FormattedLocation? value) => value == null,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textStyle: textStyle,
      validator: validator,
    );
  }
}

/// Pick multiple location and it ui is same as Inputs in your app
/// You can set your preferred options for map using `OpenMapSettings`
class MultiOpenMapPicker extends StatelessWidget {
  final List<FormattedLocation>? initialValue;
  final ValueChanged<List<FormattedLocation>>? onChanged;
  final ValueChanged<List<FormattedLocation>>? onSaved;
  final String? Function(List<FormattedLocation> value)? validator;
  final InputDecoration decoration;
  final Widget? removeIcon;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final FocusNode? focusNode;
  final bool expands;
  const MultiOpenMapPicker({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.removeIcon = const Icon(Icons.delete_rounded),
    this.decoration = const InputDecoration(
      prefixIcon: Icon(Icons.my_location_rounded),
      hintText: "My Location",
    ),
    this.textStyle,
    this.textAlign,
    this.textAlignVertical,
    this.focusNode,
    this.expands = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseFormField<List<FormattedLocation>>(
      state: (value) =>
          OpenMapState.selected(SelectedLocation.multi(value ?? [])),
      decoration: decoration,
      display: (value) {
        var v = value ?? [];
        if (v.isEmpty) return const Text('');
        if (v.length == 1) {
          return Text(v.first.displayName);
        }
        return Wrap(
          spacing: 3,
          children: v
              .map(
                (e) => RawChip(
                  label: Text(e.name.isEmpty ? e.displayName : e.name),
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
              )
              .toList(),
        );
      },
      expands: expands,
      focusNode: focusNode,
      initialValue: initialValue ?? [],
      options: (value) {
        var list = value ?? [];
        if (list.isEmpty) {
          return OpenMapOptions();
        } else {
          return OpenMapOptions.bounds(
            bounds:
                LatLngBounds.fromPoints(list.map((e) => e.toLatLng()).toList()),
          );
        }
      },
      onDone: (field, value) {
        field.didChange(value.whenOrNull<List<FormattedLocation>>(
          multi: (selected) {
            return selected;
          },
        ));
        onChanged?.call(field.value ?? []);
      },
      onRemove: (field) {
        field.didChange([]);
        onChanged?.call(field.value!);
      },
      onSaved: (value) => onSaved?.call(value ?? []),
      removeIcon: removeIcon,
      isEmpty: (value) => value == null || value.isEmpty,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textStyle: textStyle,
      validator: (value) => validator?.call(value ?? []),
    );
  }
}

class _OpenMapBloc extends OpenMapBloc {
  OpenMapState _state;
  _OpenMapBloc(this._state);
  @override
  OpenMapState get state => _state;
  final StreamController<OpenMapState> _controller =
      StreamController<OpenMapState>.broadcast();
  @override
  Stream<OpenMapState> get stream => _controller.stream;

  Future close() {
    return _controller.close();
  }

  @override
  void emit(OpenMapState state) {
    _state = state;
    _controller.sink.add(state);
  }
}
