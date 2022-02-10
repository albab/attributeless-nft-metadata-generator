file = Dir.entries("./assets").select { |f| File.file? File.join("./assets", f) }[0]
file_name = file.split(".gif")[0]
(1..100).each do |i|
    FileUtils.cp "./assets/#{file}", "./assets/#{file_name}-#{format('%02d', i)}.gif"
end
