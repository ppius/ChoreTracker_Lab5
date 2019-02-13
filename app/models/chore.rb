class Chore < ApplicationRecord
    #Relationship
    belongs_to :child
    belongs_to :task
end
