require "rspec"
require "./task_1.rb"

RSpec.describe "file methods" do
  let(:file) { File.read(DATA_PATH) }

  it "#index" do
    expect(index).to eq(file)
  end

  it "#find" do
    expect(find(3)).to eq("Роман Вечнов 35")
  end

  it "#where" do
    expect { where("22") }.to output("1\n2\n").to_stdout
  end
end
