class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_filter :categories
	before_filter :brands

	def categories
  	@categories = Category.all
	end


  def brands
  	@brands = []
  Product.all.each do |product|
      if @brands.include?(product.brand) == false
        @brands.push(product.brand)
      end
    end
     return @brands
	 end
	 
end
