class RaspberryPiTutorials {
  String label;
  String imageUrl;
  String readingTime;

  static List<RaspberryPiTutorials> samples = [
    RaspberryPiTutorials('What is Raspberry Pi?', 'assets/tutorial_assets/article1.png', "10 mins"),
    RaspberryPiTutorials('Static IP Address to Raspberry Pi', 'assets/tutorial_assets/article2.png', "5 mins"),
    RaspberryPiTutorials('CPU Performance Comparison', 'assets/tutorial_assets/article3.png', "12 mins"),
    RaspberryPiTutorials('GPIO of Raspberry Pi Pico', 'assets/tutorial_assets/article4.png', "5 mins"),
    RaspberryPiTutorials('Raspberry Pi Configuration', 'assets/tutorial_assets/article5.png', "10 mins"),
    RaspberryPiTutorials('TightVNC and Raspberry Pi', 'assets/tutorial_assets/article6.png', "12 mins"),
    RaspberryPiTutorials('Audio Antics in Raspberry Pi', 'assets/tutorial_assets/article7.png', "5 mins"),
    RaspberryPiTutorials('Data Plotting in BBB', 'assets/tutorial_assets/article8.png', "10 mins"),
  ];

  RaspberryPiTutorials(this.label, this.imageUrl, this.readingTime);
}