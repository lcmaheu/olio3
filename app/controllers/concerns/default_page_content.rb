module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
        before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Qdev's Portfolio | Our Portfolio Website"
    @seo_keywords = "Quebec Développeur Web"
  end
end