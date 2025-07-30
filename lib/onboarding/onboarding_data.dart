class OnboardingData {
  String imageName;
  String title;
  String? description;

  OnboardingData({
    required this.imageName,
    required this.title,
    this.description,
  });

  static List<OnboardingData> onboardinglist=[

    OnboardingData(imageName: "onboarding1", title:"Welcome To Islami App"),
    OnboardingData(imageName:"onboarding2", title: "Welcome To Islami" ,description: "We Are Very Excited To Have You In Our Community"),
    OnboardingData(imageName: "onboarding3", title: "Reading the Quran" , description: "Read, and your Lord is the Most Generous"),
    OnboardingData(imageName: "onboarding4", title: "Bearish" , description: "Praise the name of your Lord, the Most High"),
    OnboardingData(imageName: "onboarding5", title: "Holy Quran Radio" , description: "You can listen to the Holy Quran Radio through the application for free and easily")
  ];
}