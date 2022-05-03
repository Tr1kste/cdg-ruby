require 'rspec'
require './task_1.rb'
  
RSpec.describe 'Methods' do

    let(:where_out) do
<<-OUTPUT
1
2
OUTPUT
    end

    let(:file) {File.open(DATA_PATH)}

    it '#index' do
        expect{index}.to output(file.read).to_stdout
    end

    it '#find' do
        expect(find(3)).to eq('Роман Вечнов 35')
    end

    it '#where' do
        expect{where('22')}.to output(where_out).to_stdout
    end

end