require 'csv'

namespace :price_list do
  desc "Import price lists"
  task :import, [:file] => [:environment] do |t, args|
    CSV.foreach(args[:file], headers: :first_row, :header_converters => :symbol, encoding: "ISO-8859-1:UTF-8") do |row|
      item = Item.find_or_create_by(code: row[:code])
      item.update(row.to_hash)
    end
  end
end
