#CLI controller
module CuratedDeals
  class CLI

    def call
      greeting
      start
      # list_items from chosen categories
      # list products
      # goodbye
    end

    def greeting
      puts "Welcome to Curated Deals!"
      puts "Curated Deals features beautiful and functional products, curated by a community with great taste."
    end

    def start
      puts "Which category of products would you like to see?"
      Category.get_categories
      Category.list_categories
      puts "Please type number..."
      input = gets.strip
      category = Category.get_by_index(input.to_i - 1)
      category.display_category
    end





  end
end
