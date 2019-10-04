class ContactInfo < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :number, presence: true
  validates :content, presence: true
end
