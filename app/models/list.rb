class List < ActiveRecord::Base
  has_many :items, :order => "position"
  acts_as_list
end
