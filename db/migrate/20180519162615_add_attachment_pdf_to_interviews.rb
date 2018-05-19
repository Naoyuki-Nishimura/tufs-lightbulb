class AddAttachmentPdfToInterviews < ActiveRecord::Migration
  def self.up
    change_table :interviews do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :interviews, :pdf
  end
end
