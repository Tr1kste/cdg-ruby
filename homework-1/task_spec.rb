require "rspec"
require "./task"

RSpec.describe "Greeting test" do
    it "If 18 years or more" do
        expect(greeting(20, 'Андрей', 'Панько')).to eq("Привет Андрей Панько. Самое время заняться делом!")
        expect(greeting(25, 'Андрей', 'Панько')).to eq("Привет Андрей Панько. Самое время заняться делом!")
    end
    it "If 17 years or under" do
        expect(greeting(17, 'Андрей', 'Панько')).to eq("Привет Андрей Панько. Тебе меньше 18 лет, но начать учиться программировать никогда не рано!")
        expect(greeting(15, 'Андрей', 'Панько')).to eq("Привет Андрей Панько. Тебе меньше 18 лет, но начать учиться программировать никогда не рано!")
    end
end

RSpec.describe "Foobar test" do
    it "If one number 20" do
        expect(foobar(20,15)).to eq(15)
        expect(foobar(48,20)).to eq(48)
    end
    it "If there is no number 20" do
        expect(foobar(60,15)).to eq(75)
        expect(foobar(10,37)).to eq(47)
    end
end
