require 'open-uri'
require 'nokogiri'

def scraper(idea)
  html_file = open("https://www.etsy.com/fr/search/accessories?q=#{idea}")
  html_doc = Nokogiri::HTML(html_file)
  products = []
  html_doc.search(".card-meta").each do |product|
    name = product.search(".card-title").text.strip
    price = product.search(".currency").text.strip.to_i
    products << { name: name, price: price}
  end
  return products
end

