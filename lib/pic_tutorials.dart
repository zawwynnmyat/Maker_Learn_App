class PICTutorials {
  String label;
  String imageUrl;
  String readingTime;

  static List<PICTutorials> samples = [
    PICTutorials('Program Memory Map – Interrupt and Stack', 'assets/tutorial_assets/article1.png', "10 mins"),
    PICTutorials('External Interrupt', 'assets/tutorial_assets/article2.png', "5 mins"),
    PICTutorials('Port Change Interrupt', 'assets/tutorial_assets/article3.png', "12 mins"),
    PICTutorials('Timer 0 Overflow Interrupt', 'assets/tutorial_assets/article4.png', "5 mins"),
    PICTutorials('Timer 1 Module block diagram', 'assets/tutorial_assets/article5.png', "10 mins"),
  ];

  PICTutorials(this.label, this.imageUrl, this.readingTime);
}