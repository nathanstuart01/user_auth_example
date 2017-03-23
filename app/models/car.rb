class Car < ApplicationRecord
  belongs_to :user
  validates_presence_of :make, :model, :year, :price

  def info
    "#{make}, #{model}"
  end
end
