class User < ApplicationRecord
    has_many :chirrps
    has_many :relationships
    has_many :friends, through: :relationships
    has_many :inverse_relationships, class_name: "Relationship", foreign_key: "friend_id"
    has_many :inverse_friends, through: :inverse_relationships, source: :User
    has_many :squawks 
    has_many :rechirrps, foreign_key: "rechirrper_id"
end
