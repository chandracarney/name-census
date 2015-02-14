desc "Imports census name and birth count data from text files"
task :import_censuses => :environment do
  fileglob = Rails.root.join("vendor", "data", "*.txt")
  files = Dir.glob(fileglob)

  files.each do |file|
    year_match = file.split("/").last.match(/(\d+)/)
    year = year_match[1]
    File.readlines(file).map(&:chomp).each do |line|
      name, gender, occurrences = line.split(",")
      puts occurrences.inspect
      puts "#{year}, #{name}, #{gender}, #{occurrences.to_i}"
    end
  end
end
