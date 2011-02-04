class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :paper_tests, :csv_file_name, :string
    add_column :paper_tests, :csv_content_type, :string
    add_column :paper_tests, :csv_file_size, :integer
    add_column :paper_tests, :csv_updated_at, :datetime
    remove_column :paper_tests, :data_updated_at
    remove_column :paper_tests, :data_content_type
    remove_column :paper_tests, :data_file_size
  end

  def self.down
    remove_column :paper_tests, :csv_file_name
    remove_column :paper_tests, :csv_content_type
    remove_column :paper_tests, :csv_file_size
    remove_column :paper_tests, :csv_updated_at
    add_column :paper_tests, :data_updated_at, :datetime
    add_column :paper_tests, :data_content_type, :string
    add_column :paper_tests, :data_file_size, :integer
  end
end
