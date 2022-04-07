require 'rspec'
require './task.rb'

RSpec.describe "Tests for method 'string'" do
    it "Text end's with CS" do
        expect(string('renoCS')).to eq(64)
        expect(string('reCS')).to eq(16)
    end
    it "Text doesn't end's with CS" do
        expect(string('reno')).to eq('oner')
        expect(string('hello')).to eq('olleh')
        expect(string('CShello')).to eq('ollehSC')
    end
end

RSpec.describe "Tests for method 'pokemon'" do
    it "Test for pokemon" do
        num_pokemon = 3
        result = [
            {name: "Pika", color: "Yellow"},
            {name: "Foo", color: "Green"},
            {name: "Slow", color: "Red"}
        ]

        allow_any_instance_of(Object).to receive(:gets).and_return("Pika", "Yellow", "Foo", "Green", "Slow", "Red")
        expect(pokemon(num_pokemon)).to eq(result)
    end
end
