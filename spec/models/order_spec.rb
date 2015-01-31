require 'spec_helper'

describe Order do
  it { should have_db_column :client_id }
end
