require './lib/address_search'
require './lib/generate_index'
require './lib/download'
require './lib/store_csv'

csv = StoreCsv.new
index = GenerateIndex.new
service = AddressSearch.new

if ARGV.length.zero?
  puts '検索する文字を入力してください'
else
  puts '検索しています...'
  csv.store_csv
  index.generate
  service.search(ARGV[0])
end
