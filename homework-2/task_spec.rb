require "rspec"
require "./task.rb"

RSpec.describe "task" do
  it "#string: text end's with CS" do
    expect(string("renoCS")).to eq(64)
  end

  it "#string: Text doesn't end's with CS" do
    expect(string("CShello")).to eq("ollehSC")
  end

  it "#pokemon" do
    allow_any_instance_of(Object).to receive(:gets).and_return("Pika", "Yellow", "Foo", "Green", "Slow", "Red")
    result = [
      { name: "Pika", color: "Yellow" },
      { name: "Foo", color: "Green" },
      { name: "Slow", color: "Red" },
    ]

    expect(pokemon(3)).to eq(result)
  end

  it "#pokemon: test type" do
    expect(pokemon(4)).to be_an_instance_of(Array)
  end
end
