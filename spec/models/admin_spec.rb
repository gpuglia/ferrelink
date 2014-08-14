require 'spec_helper'

describe Admin do
  it { should have_db_column :email }
end
