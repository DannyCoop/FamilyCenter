class Family < ApplicationRecord
    has_many :users
    has_many :calender_events

    validates :family_name, presence: true, uniqueness: true
end
