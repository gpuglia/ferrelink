require 'csv'

namespace :client_list do
  desc "Import client list"
  task :import, [:file] => [:environment] do |t, args|
    CSV.foreach(args[:file], headers: :first_row, :header_converters => :symbol, encoding: "ISO-8859-1:UTF-8") do |row|
      Client.find_or_create_by(code: row[:code]).update(row.to_hash)
    end

    puts "Done!"
  end
end
