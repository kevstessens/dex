class Dex < ActiveRecord::Base
  attr_accessible :name, :owner, :quantity
end
