# frozen_string_literal: true

class MyPortfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank? }

    include Placeholder

    validates_presence_of :title, :body, :main_image, :tumb_image

    def self.react
        where(subtitle: "React")
    end
    
    after_initialize :set_defaults

    def set_defaults 
        self.main_image ||= Placeholder.image_generator(height: '600', width: '250')
        self.tumb_image ||= Placeholder.image_generator(height: '350', width: '150')
    end
end

