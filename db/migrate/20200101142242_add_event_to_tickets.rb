class AddEventToTickets < ActiveRecord::Migration[6.0]
  def change
     add_reference :tickets, :event, foreign_key: true
  end
end
