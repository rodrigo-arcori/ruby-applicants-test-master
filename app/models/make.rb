class Make < ActiveRecord::Base

  scope :find_name, -> (name) { where(:name => name) }

  has_many :models
  validates :name, presence: true
end
