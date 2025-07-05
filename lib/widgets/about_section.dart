// lib/widgets/about_section.dart
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Multi-disciplinary designer who thrives in bringing clarity to chaos with utmost professionalism, technical product manager, 3D artist, Game and XR Developer, and budding Flutter developer with a interest in creating delightful, intuitive, and functional mobile applications.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildInterestChip(context, 'Mobile Development'),
                  _buildInterestChip(context, 'UI/UX Design'),
                  _buildInterestChip(context, 'Prpduct Management'),
                  _buildInterestChip(context, 'Game Development'),
                  _buildInterestChip(context, '3D Artist'),
                  _buildInterestChip(context, 'Iconographer'),
                  _buildInterestChip(context, 'Environment design'),
                  _buildInterestChip(context, 'Technical writing'),
                  _buildInterestChip(context, 'XR Development'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInterestChip(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
