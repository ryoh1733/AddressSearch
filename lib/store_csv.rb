class StoreCsv
  def store_csv
    zip = Download.new
    filename = zip.download
    FileUtils.mkdir_p('./csv')
    csv_path = zip.extract(filename, './csv')
    csv_path
  end
end
