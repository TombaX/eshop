class SbtUnit < ActiveRecord::Base
  validates :name, presence: true
end
