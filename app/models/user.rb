class User < ApplicationRecord
    has_many :tasks
    has_many :User_events
    has_many :events, through: :User_events
end
