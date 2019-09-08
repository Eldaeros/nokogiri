require 'nokogiri'

ARGV.each do |argument|
    xml = File.open(argument, "rb").read

    doc = Nokogiri::XML(xml) do |config|
        config.noent.dtdload
    end

    puts doc.to_xml
end