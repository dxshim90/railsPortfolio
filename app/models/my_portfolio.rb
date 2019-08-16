# frozen_string_literal: true

class MyPortfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :tumb_image
    
    
end
