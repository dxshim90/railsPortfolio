# frozen_string_literal: true

class Skill < ApplicationRecord
    validates_presense_of :title, :percent
end
