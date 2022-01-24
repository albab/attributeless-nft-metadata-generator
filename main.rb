require 'json'
@base_image_url = "ipfs://<--Enter IPFS CID Here -->"
@base_name = "NFT name"
@description = "A collection of 100 NFT collectibles"

@base_json = {
    "name": @base_name,
    "description": @description,
    "image": @base_image_url
    # "attributes": []
}

files = Dir.entries("./assets").select { |f| File.file? File.join("./assets", f) }
FileUtils.rm_f Dir.glob("output/*")
files.each_with_index do |file, i|
    @metadata = @base_json.dup
    @metadata[:name] = "#{@metadata[:name]} ##{i+1}"
    @metadata[:image] = "#{@metadata[:image]}/#{file}"
    File.write("output/#{i}.json", @metadata.to_json)
end