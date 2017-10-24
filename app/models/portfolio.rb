class Portfolio < ApplicationRecord
    has_many :technologies
    # IF BLANK['NAME', DONT LET THIS PASS THROUGH.  accepts_nested_attributes_for :technologies, reject_if: lambda { |attri| attri['name'].blank?}
    accepts_nested_attributes_for   :technologies, 
                                    reject_if: lambda { |attri| attri['name'].blank?}
    
    
    include Placeholder
    validates_presence_of :title, :main_image, :thumb_image, :body
    
    def self.angular
        where(subtitle: "Angular")
    end
    
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
    
    after_initialize :set_defaults
    
    def set_defaults

        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end
    
end
