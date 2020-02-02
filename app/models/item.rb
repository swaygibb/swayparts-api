class Item < ApplicationRecord
  # model association
  belongs_to :part

  # validation
  validates_presence_of :name
end