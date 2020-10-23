class Project < ApplicationRecord
    enum state: [:propuesta, :en_progreso, :terminado]
    validates :name, :description, :state, presence: true
end
