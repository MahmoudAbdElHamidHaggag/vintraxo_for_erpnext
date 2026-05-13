import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/domain_provider.dart';
import 'package:vintraxo_for_erpnext/features/auth/presentation/providers/proxy_provider.dart';
import 'package:flutter/foundation.dart';

class DomainEntryScreen extends ConsumerStatefulWidget {
  const DomainEntryScreen({super.key});

  @override
  ConsumerState<DomainEntryScreen> createState() => _DomainEntryScreenState();
}

class _DomainEntryScreenState extends ConsumerState<DomainEntryScreen> {
  final _formKey = GlobalKey<FormState>();
  final _domainController = TextEditingController();
  final _proxyController = TextEditingController();

  @override
  void dispose() {
    _domainController.dispose();
    _proxyController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      var domain = _domainController.text.trim();
      if (!domain.startsWith('http')) {
        domain = 'https://$domain';
      }
      ref.read(domainProvider.notifier).setDomain(domain);
      
      if (kIsWeb) {
        final proxy = _proxyController.text.trim();
        ref.read(proxyProvider.notifier).setProxy(proxy.isNotEmpty ? proxy : null);
      }
      
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Icon(Icons.business, size: 64, color: Color(0xFF4F46E5)),
                      const SizedBox(height: 24),
                      Text(
                        'Welcome to Vintraxo',
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Enter your ERPNext workspace domain to continue.',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: _domainController,
                        decoration: const InputDecoration(
                          labelText: 'Workspace URL',
                          hintText: 'e.g., erp.company.com',
                          prefixIcon: Icon(Icons.link),
                        ),
                        keyboardType: TextInputType.url,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a domain';
                          }
                          return null;
                        },
                        onFieldSubmitted: (_) => _submit(),
                      ),
                      if (kIsWeb) ...[
                        const SizedBox(height: 16),
                        ExpansionTile(
                          title: const Text('Advanced Options (Web)', style: TextStyle(fontSize: 14)),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                controller: _proxyController,
                                decoration: const InputDecoration(
                                  labelText: 'CORS Proxy URL (Optional)',
                                  hintText: 'e.g., https://cors-anywhere.herokuapp.com/',
                                  prefixIcon: Icon(Icons.security),
                                ),
                                keyboardType: TextInputType.url,
                              ),
                            ),
                          ],
                        ),
                      ],
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: _submit,
                        child: const Text('Continue'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
