class Child < ApplicationRecord

    #Relationships
    has_many :chores
    has_many :tasks, through: :chores

    #Scopes
    scope :alphabetical, -> { order('first_name')}
    scope :active,       -> { where(active: true)}

    #Validations
    validates_presence_of :first_name, :last_name

    #Methods
    def name 
        first_name + " " + last_name
    end

end
