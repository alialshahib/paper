class PaperTest < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    ali     :string
    anthony :string
    richard :string
    paul    :integer
    timestamps
  end

  # Paperclip
   has_attached_file :csv
   before_post_process :image?
   private
   def image?
   data_content_type =~ /^image.*/
   end
  
   validates_attachment_content_type :csv, :content_type => ['text/csv','text/comma-separated-values','text/csv','application/csv','application/excel','application/vnd.ms-excel','application/vnd.msexcel','text/anytext','text/plain'], :message => "only accepting .xls files at the moment"

# def process
    # Get the file contents
#    content = self.pipes_file.to_file
#    content.rewind
#    while line = content.gets
#      data = line.split "|"
      # do something with data
#    end
# end 

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
