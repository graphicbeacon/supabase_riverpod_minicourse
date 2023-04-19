import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memories_app/core/core.dart';
import 'package:memories_app/memory/memory.dart';

class MemoryItemForm extends ConsumerStatefulWidget {
  const MemoryItemForm({this.data, super.key});

  final Memory? data;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MemoryItemFormState();
}

class _MemoryItemFormState extends ConsumerState<MemoryItemForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode? _autovalidateMode;
  bool _isSubmitting = false;

  late TextEditingController _titleCtrl;
  File? _file;

  @override
  void initState() {
    _titleCtrl = TextEditingController(text: widget.data?.title);
    super.initState();
  }

  void _popView() {
    if (mounted) {
      context.pop();
    }
  }

  Future<void> _addMemory() async {
    if (_file == null) {
      return;
    }

    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(memoryRepositoryProvider).addMemory(
            title: _titleCtrl.text,
            file: _file!,
          );

      _popView();
    } catch (e) {
      _popView();

      context.showAlert(e.toString());
    }
  }

  Future<void> _updateMemory() async {
    if (widget.data == null) {
      return;
    }

    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(memoryRepositoryProvider).updateMemory(
            id: widget.data!.id,
            title: _titleCtrl.text,
          );

      _popView();
    } catch (e) {
      _popView();

      context.showAlert(e.toString());
    }
  }

  Future<void> _deleteMemory() async {
    if (widget.data == null) {
      return;
    }

    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(memoryRepositoryProvider).deleteMemory(widget.data!);

      _popView();
    } catch (e) {
      _popView();

      context.showAlert(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            widget.data == null ? 'New Memory' : 'Edit Memory',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 30),
          TextFormField(
            controller: _titleCtrl,
            readOnly: _isSubmitting,
            decoration: const InputDecoration(
              labelText: 'Title',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }

              return null;
            },
          ),
          const SizedBox(height: 20),
          if (widget.data?.imageId != null)
            SizedBox(
              height: 150,
              child: Image.network(
                ref.read(
                  imageUrlProvider(
                    userId: widget.data!.profileId,
                    filename: widget.data!.imageId,
                  ),
                ),
              ),
            )
          else
            FileUploadField(
              readOnly: _isSubmitting,
              onChanged: (file) {
                setState(() {
                  _file = file;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select an image';
                }

                return null;
              },
            ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _isSubmitting
                  ? null
                  : () async {
                      if (_formKey.currentState!.validate() == false) {
                        setState(() {
                          _autovalidateMode = AutovalidateMode.always;
                        });
                      } else if (widget.data != null) {
                        _updateMemory();
                      } else {
                        _addMemory();
                      }
                    },
              child: const Text('Submit'),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: _isSubmitting ? null : _deleteMemory,
              child: const Text('Delete'),
            ),
          ),
        ],
      ),
    );
  }
}
