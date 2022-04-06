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