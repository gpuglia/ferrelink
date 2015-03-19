require 'csv'

namespace :price_list do
  desc "Import price list"
  task :import, [:file] => [:environment] do |t, args|
    CSV.foreach(args[:file], headers: :first_row, :header_converters => :symbol, encoding: "ISO-8859-1:UTF-8") do |row|
      product = Product.find_or_create_by(code: row[:code])
      product.update(row.to_hash)
    end
    puts "Done!"
  end
end
