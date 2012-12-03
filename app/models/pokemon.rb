class Pokemon < ActiveRecord::Base
  belongs_to :dex
  attr_accessible :captured, :name, :number, :owner, :stage, :type
end
