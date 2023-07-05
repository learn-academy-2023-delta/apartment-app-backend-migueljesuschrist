require 'rails_helper'

RSpec.describe JwtDenylist, type: :model do

  def change
    create_table :jwt_denylist do |t|
      t.string :jti, null: false
      t.datetime :exp, null: false
    end
    add_index :jwt_denylist, :jti
  end
  
end
