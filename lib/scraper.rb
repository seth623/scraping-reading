require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")

doc = Nokogiri::HTML5(html)

programs = doc.css(".btn.btn-primary.btn-red") 
programs.each do |program|
    puts program.text.strip
end  