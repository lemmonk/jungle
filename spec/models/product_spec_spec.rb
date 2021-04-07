require 'rails_helper'

RSpec.describe ProductSpec, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'Validations' do
    it 'PRODUCT NAME, PRICE, QUANTITY, AND CATEGORY SHOULD BE' do
      @category = Category.new(
        id: 15,
        name: "Entertainment"
      )

    @category.save!

      @product = Product.new(
        id: 10,
        name: "A Wample",
        description: "It Wamples",
        image: 'wample.jpg',
        price_cents: 100000,
        quantity: 2,
        created_at: DateTime.now,
        updated_at: DateTime.now,
        category_id: @category.id
      )
  
     
    @product.save!

    expect(@product.name).to be
    expect(@product.price).to be
    expect(@product.quantity).to be
    expect(@product.category).to be
    @product.validate!            # => ["cannot be nil"]
    @product.errors.full_messages
    end

    it 'PRODUCT NAME SHOULD BE NIL' do
      @category = Category.new(
        id: 16,
        name: "Entertainment"
      )

      @product = Product.new(
        id: 10,
        name: nil,
        description: "It Wamples",
        image: 'wample.jpg',
        price_cents: 100000,
        quantity: 2,
        created_at: DateTime.now,
        updated_at: DateTime.now,
        category_id: @category.id
      )

     

    expect(@product.name).to be_nil
    end

    it 'PRODUCT PRICE SHOULD BE NIL' do
      @category = Category.new(
        id: 17,
        name: "Entertainment"
      )

      @product = Product.new(
        id: 10,
        name: "Wampling",
        description: "It Wamples",
        image: 'wample.jpg',
        price_cents: nil,
        quantity: 2,
        created_at: DateTime.now,
        updated_at: DateTime.now,
        category_id: @category.id
      )

    expect(@product.price).to be_nil
    end

    it 'PRODUCT QUANTITY SHOULD BE NIL' do
      @category = Category.new(
        id: 18,
        name: "Entertainment"
      )

      @product = Product.new(
        id: 10,
        name: "Wampling",
        description: "It Wamples",
        image: 'wample.jpg',
        price_cents: 100000,
        quantity: nil,
        created_at: DateTime.now,
        updated_at: DateTime.now,
        category_id: @category.id
      )

    expect(@product.quantity).to be_nil
    end

    it 'PRODUCT CATEGORY SHOULD BE NIL' do
      @category = Category.new(
        id: 20,
        name: "Entertainment"
      )

      @product = Product.new(
        id: 10,
        name: "Wampling",
        description: "It Wamples",
        image: 'wample.jpg',
        price_cents: 100000,
        quantity: 1,
        created_at: DateTime.now,
        updated_at: DateTime.now,
        category_id: nil
      )

    expect(@product.category).to be_nil
    @product.validate
    @product.errors.full_messages;
    end

  end
end
