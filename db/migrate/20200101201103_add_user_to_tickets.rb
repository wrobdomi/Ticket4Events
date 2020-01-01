class AddUserToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :user, foreign_key: true
  end
end
