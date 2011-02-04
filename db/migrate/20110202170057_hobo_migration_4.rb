class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :paper_tests, :avatar_file_name, :string
    add_column :paper_tests, :avatar_content_type, :string
    add_column :paper_tests, :avatar_file_size, :integer
    add_column :paper_tests, :avatar_updated_at, :datetime
    remove_column :paper_tests, :csv_file_size
    remove_column :paper_tests, :csv_file_name
    remove_column :paper_tests, :csv_content_type
    remove_column :paper_tests, :csv_updated_at
  end

  def self.down
    remove_column :paper_tests, :avatar_file_name
    remove_column :paper_tests, :avatar_content_type
    remove_column :paper_tests, :avatar_file_size
    remove_column :paper_tests, :avatar_updated_at
    add_column :paper_tests, :csv_file_size, :integer
    add_column :paper_tests, :csv_file_name, :string
    add_column :paper_tests, :csv_content_type, :string
    add_column :paper_tests, :csv_updated_at, :datetime
  end
end
