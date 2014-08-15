require 'spec_helper'

describe Client do
  #Migrations
  it { should have_db_column :email }
  it { should have_db_column :name }
  it { should have_db_column :rif }
  it { should have_db_column :address }

  #Validations
  it { should validate_presence_of :name }
  it { should validate_presence_of :rif }
  it { should validate_presence_of :address }
end