require 'rspec'
require './lib/address_search.rb'

describe '#to_ngram' do
  it '複数の文字列に分割される' do
    result = '東京都'.to_ngram(2)
    expect(result.length).to eq 2
    expect(result[0]).to eq '東京'
    expect(result[1]).to eq '京都'
  end
end
