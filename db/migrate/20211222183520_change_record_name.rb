class ChangeRecordName < ActiveRecord::Migration[6.0]
  def change
    rename_column :artists, :record, :recording
  end
end
