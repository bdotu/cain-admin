require 'open-uri'
require 'nokogiri'
require 'csv'
require 'date'

class HtmlToCsv
  # BASE_URL = request.base_url

  def convert(url)
    column_header = ["Description", "Gross Amount(+/-)", "Payment Type", "Issuer", "Receiver", "Location", "Receipt Received/Issued", "Platform", "Comments"]
    doc = Nokogiri::HTML(open(url))
    csv = CSV.open("cainexpenses_#{DateTime.now}.csv", 'a+', :write_headers => true, :headers => column_header)

    doc.xpath('//table//tr').each do |row|
      table_array = []
      row.xpath('td').each do |cell|
        table_array << cell.text.gsub("\n", '').strip
      end
      csv << table_array
    end
    csv.close
  end
# puts "We live baby..."
end
