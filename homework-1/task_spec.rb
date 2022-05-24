require "rspec"
require "./task"

RSpec.describe "#greeting" do
  it "result will be string" do
    expect(greeting(44, "Ted", "Lasso")).to be_an_instance_of(String)
  end

  it "age >= 18" do
    expect(greeting(20, "Ted", "Lasso")).to eq(" - Привет Ted Lasso. Самое время заняться делом!")
  end

  it "age < 18" do
    expect(greeting(12, "Ted", "Lasso")).to eq(" - Привет Ted Lasso. Тебе меньше 18 лет, но начать учиться программировать никогда не рано!")
  end

  describe "#foobar" do
    example "Number #1 = 20" do
      expect(foobar(20, 15)).to eq(15)
    end

    example "Number #2 = 20" do
      expect(foobar(4, 20)).to eq(4)
    end

    example "Numbers != 20" do
      expect(foobar(60, 15)).to eq(75)
    end
  end
end
