import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memories_app/core/core.dart';
import 'package:memories_app/onboarding/onboarding.dart';

class VerificationPageParams {
  const VerificationPageParams({
    required this.email,
    required this.password,
    required this.username,
  });

  final String email;
  final String password;
  final String username;
}

class VerificationPage extends ConsumerStatefulWidget {
  const VerificationPage({required this.params, super.key});

  final VerificationPageParams params;

  @override
  ConsumerState<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends ConsumerState<VerificationPage> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode? _autovalidateMode;
  bool _isSubmitting = false;

  final _codeCtrl = TextEditingController();

  Future<void> _resendCode() async {
    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(onboardingRepositoryProvider).signUp(
            email: widget.params.email,
            password: widget.params.password,
            username: widget.params.username,
          );

      if (mounted) {
        context.showAlert('Code resent');
      }
    } catch (e) {
      context.showAlert(e.toString());
    }

    setState(() {
      _isSubmitting = false;
    });
  }

  Future<void> _verify() async {
    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(onboardingRepositoryProvider).verifyCode(
            email: widget.params.email,
            code: _codeCtrl.text,
          );

      if (mounted) {
        context.showAlert('Successfully signed up');

        context.go('/');
      }
    } catch (e) {
      setState(() {
        _isSubmitting = false;
      });

      context.showAlert(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            children: [
              Text(
                'Enter the verification code sent '
                'to your email address ${widget.params.email}',
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _codeCtrl,
                readOnly: _isSubmitting,
                decoration: const InputDecoration(
                  labelText: 'Verification code',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Missing the verification code';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: _isSubmitting ? null : _resendCode,
                  child: const Text('Resend Code'),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _isSubmitting
                      ? null
                      : () {
                          if (_formKey.currentState!.validate()) {
                            _verify();
                          } else {
                            setState(() {
                              _autovalidateMode = AutovalidateMode.always;
                            });
                          }
                        },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
