class Client < ActiveRecord::Base
  def self.search(search)
    where(code: search).first
  end
end
