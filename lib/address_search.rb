class String
  def to_ngram(n)
    self.each_char
        .each_cons(n)
        .map(&:join)
  end
end

class AddressSearch
  def search(keyword)
    keywords = keyword.to_ngram(2)

    File.open("index_file.csv") do |file|
      file.each_line do |line|
        keywords.each do |keyword|
          puts line if line.include?(keyword)
        end
      end
    end
  end
end
