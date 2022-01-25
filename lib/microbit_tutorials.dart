class MicroBitTutorials {
  String label;
  String imageUrl;
  String readingTime;

  static List<MicroBitTutorials> samples = [
    MicroBitTutorials('Introduction to BBC Micro:Bit', 'assets/tutorial_assets/article1.png', "10 mins"),
    MicroBitTutorials('GPIO Output of BBC Micro:Bit Pins', 'assets/tutorial_assets/article2.png', "5 mins"),
    MicroBitTutorials('Getting Started with BBC Micro:Bit', 'assets/tutorial_assets/article3.png', "12 mins"),
    MicroBitTutorials('MicroBit Button Input', 'assets/tutorial_assets/article4.png', "5 mins"),
    MicroBitTutorials('Compass Sensor in BBC Micro:Bit', 'assets/tutorial_assets/article5.png', "10 mins"),
  ];

  MicroBitTutorials(this.label, this.imageUrl, this.readingTime);
}