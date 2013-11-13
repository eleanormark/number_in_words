require 'rspec'
require 'number_in_words'

describe "natural_number_in_words" do 

  it "reads 'one' through 'nine'" do
    natural_number_in_words(1).should == 'one '
    natural_number_in_words(2).should == 'two '
    natural_number_in_words(3).should == 'three '
    natural_number_in_words(4).should == 'four '
    natural_number_in_words(5).should == 'five '
    natural_number_in_words(6).should == 'six '
    natural_number_in_words(7).should == 'seven '
    natural_number_in_words(8).should == 'eight '
    natural_number_in_words(9).should == 'nine '
  end

  it "reads 10 to 12" do
    natural_number_in_words(10).should == 'ten '
    natural_number_in_words(11).should == 'eleven '
    natural_number_in_words(12).should == 'twelve '
  end

  it "reads teens" do
    natural_number_in_words(13).should == 'thirteen '
    natural_number_in_words(14).should == 'fourteen '
    natural_number_in_words(15).should == 'fifteen '
    natural_number_in_words(16).should == 'sixteen '
    natural_number_in_words(17).should == 'seventeen '
    natural_number_in_words(18).should == 'eighteen '
    natural_number_in_words(19).should == 'nineteen '
  end

  it "reads tens" do
    natural_number_in_words(20).should == 'twenty '
    natural_number_in_words(30).should == 'thirty '
    natural_number_in_words(40).should == 'forty '
    natural_number_in_words(50).should == 'fifty '
    natural_number_in_words(60).should == 'sixty '
    natural_number_in_words(70).should == 'seventy '
    natural_number_in_words(80).should == 'eighty '
    natural_number_in_words(90).should == 'ninety '
  end

  it "reads various other numbers less than 100" do
    natural_number_in_words(21).should == 'twenty one '
    natural_number_in_words(77).should == 'seventy seven '
    natural_number_in_words(99).should == 'ninety nine '
  end

  it "reads hundreds" do
    natural_number_in_words(100).should == 'one hundred '
    natural_number_in_words(102).should == 'one hundred two '
    natural_number_in_words(200).should == 'two hundred '
    natural_number_in_words(300).should == 'three hundred '
    natural_number_in_words(123).should == 'one hundred twenty three '
    natural_number_in_words(777).should == 'seven hundred seventy seven '
    natural_number_in_words(818).should == 'eight hundred eighteen '
    natural_number_in_words(512).should == 'five hundred twelve '
    natural_number_in_words(999).should == 'nine hundred ninety nine '
  end

  it "reads thousands" do
    natural_number_in_words(1000).should == 'one thousand '
    natural_number_in_words(32767).should == 'thirty two thousand seven hundred sixty seven '
    natural_number_in_words(32768).should == 'thirty two thousand seven hundred sixty eight '
    natural_number_in_words(40000).should == 'forty thousand '
    natural_number_in_words(140000).should == 'one hundred forty thousand '
  end

  it "reads millions" do
    natural_number_in_words(1_040_000).should == 'one million forty thousand '
    natural_number_in_words(10_000_001).should == 'ten million one '
    natural_number_in_words(10_101_001).should == 'ten million one hundred one thousand one '
  end

  it "reads billions" do
    natural_number_in_words(1_234_567_890).should == 'one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety '
  end
  
  it "reads trillions" do
    natural_number_in_words(1_000_000_000_000).should == 'one trillion '
    natural_number_in_words(1_000_000_000_001).should == 'one trillion one '
    natural_number_in_words(1_888_259_040_036).should == 'one trillion eight hundred eighty eight billion two hundred fifty nine million forty thousand thirty six '
  end
end