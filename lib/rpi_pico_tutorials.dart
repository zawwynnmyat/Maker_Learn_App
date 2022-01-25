class RPiPicoTutorials {
  String label;
  String imageUrl;
  String readingTime;

  static List<RPiPicoTutorials> samples = [
    RPiPicoTutorials('LM35 Temperature Sensor and Pico', 'assets/tutorial_assets/article1.png', "10 mins"),
    RPiPicoTutorials('CircuitPython Push Button Input', 'assets/tutorial_assets/article2.png', "5 mins"),
    RPiPicoTutorials('Ultrasonic Sensor HCSR-04 and Pico', 'assets/tutorial_assets/article3.png', "12 mins"),
    RPiPicoTutorials('External Interrupt in RPi Pico', 'assets/tutorial_assets/article4.png', "5 mins"),
    RPiPicoTutorials('Programming RPi Pico with C', 'assets/tutorial_assets/article5.png', "10 mins"),
  ];

  RPiPicoTutorials(this.label, this.imageUrl, this.readingTime);
}