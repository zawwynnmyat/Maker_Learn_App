class FPGATutorials {
  String label;
  String imageUrl;
  String readingTime;

  static List<FPGATutorials> samples = [
    FPGATutorials('FPGA Lab 4 with Nios II Eclipse', 'assets/tutorial_assets/article1.png', "10 mins"),
    FPGATutorials('Decoder in FPGA', 'assets/tutorial_assets/article2.png', "5 mins"),
    FPGATutorials('Full Adder Verilog', 'assets/tutorial_assets/article3.png', "12 mins"),
    FPGATutorials('Ripple Adder Verilog', 'assets/tutorial_assets/article4.png', "5 mins"),
    FPGATutorials('JK Latch and JK Flip-Flop', 'assets/tutorial_assets/article5.png', "10 mins"),
  ];

  FPGATutorials(this.label, this.imageUrl, this.readingTime);
}