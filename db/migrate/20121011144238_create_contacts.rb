require_relative '../config'

class CreateContacts < ActiveRecord::Migration

  def change
    create_table (:contacts) do |t|
      t.string  :first_name
      t.string  :last_name
      t.company :company
      t.string  :email
      t.string  :phone

      t.timestamps
    end
  end

end
