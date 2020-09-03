class User < ApplicationRecord
    has_secure_password
    belongs_to :family
    has_many :tasks
    has_many :User_events
    has_many :events, through: :User_events

    validates :name, presence: true, uniqueness: true
    validates :password, presence: true
    validates :category, presence: true
end
