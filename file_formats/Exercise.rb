# Pull two files which contain articles originally gathered from feedzilla and slashdot. One in XML format. One in JSON. Combine the two lists to a common format, sort them, and save them to CSV and XLS files.


wget -0 feedzilla.jason https://d186loudes4jlv.cloudfront.net/ruby/feedzilla.json
wget -0 slashdot.xml https://d186loudes4jlv.cloudfront.net/ruby/slashdot.xml

require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i|
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end

feedzilla_articles =[]
File.open("feedzilla.json", "r") do |f|
  items = JSON.parse(f.read)
  feedzilla_articles= items['articles'].map { |a|
    {
      title: a['title'],
      link: a['url'],
      summary: a['summary']
    }
  }
end

sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}

# Writing the two export files.
CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("articles.xlsx")

# We selected data with two different formats, parsed the files and built a common format, sorted the data and then exported to CSV and XLS files.

