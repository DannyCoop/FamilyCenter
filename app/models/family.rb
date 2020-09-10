class Family < ApplicationRecord
    has_many :users
    has_many :calender_events

    validates :famyly_name, presence: true, uniqueness: true
end
