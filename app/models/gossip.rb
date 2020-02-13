class Gossip < ApplicationRecord
    #validates :title, length: { in: 3..14 }, presence: true
    #validates :content, presence: true
    belongs_to :user
    has_many :join_table_gossip_tags
    has_many :tags, through: :join_table_gossip_tags
end
