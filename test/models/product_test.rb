require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new({
      :title => 'F-yeah',
      :description => 'F-ing delicious.',
      :abv => 5.5,
      :price => 6.50,
      :quantity => 1
    })
  end

  def test_title
    assert_equal 'title', @product.name
  end

  def test_description
    assert_equal 'F-ing delicious', @product.description
  end

  def test_abv
    assert_equal 5.5, @product.abv
  end

  def test_price
    assert_equal 6.50
  end

  def test_quantity
    assert_equal 1, @product.quantity
  end
end
