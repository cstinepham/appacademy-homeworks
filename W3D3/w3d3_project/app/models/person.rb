class Person  < ActiveRecord::Base
  validates :name, :house_id, present: true
end
