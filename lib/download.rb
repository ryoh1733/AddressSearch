require 'open-uri'
require 'fileutils'
require 'zip'
require 'csv'

class Download
  def download
    url = 'http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip'
    path = './zip'
    FileUtils.mkdir_p(path)
    open(url) do |file|
      open("#{path}/ken_all.zip", 'w+b') do |out|
        out.write(file.read)
      end
    end
    "#{path}/ken_all.zip"
  end

  def extract(path, output)
    Zip::File.open(path) do |zip|
      zip.each do |entry|
        path = "#{output}/#{entry.name}"
        zip.extract(entry, path) {true}
        path
      end
    end
  end
end
