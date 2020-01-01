class AddPhoneToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :phone, :string
  end
end
