
class OnboardingContent {
  final String title;
  final String description;
  final String image;

  OnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });
}


List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Welcome to the world of Al-Haik alarabi .',
    description:  'A store that serves you electronically',
    image: 'assets/images/onboarding1.png',
  ),
  OnboardingContent(
    title: 'Being your sewing journey..',
    description: 'A store that serves you electronically',
    image: 'assets/images/onboarding2.png',
  ),
  OnboardingContent(
    title: '..........',
    description: '..........',
    image: 'assets/images/onboarding3.png',
  ),
];
