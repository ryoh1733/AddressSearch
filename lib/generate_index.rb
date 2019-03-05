class GenerateIndex
  def generate
    File.open("index_file.csv",'w') do |file|
      CSV.foreach('./csv/KEN_ALL.CSV', encoding: "SJIS:UTF-8" ) do |row|
        output_records = "#{row[2]},#{row[6]},#{row[7]},#{row[8]}\n"
        file.write(output_records)
      end
    end
  end
end
