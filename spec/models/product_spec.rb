require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

  	it 'should work if it receives all five required validators' do
  		cat1 = Category.find_or_create_by! name: 'Apparel'
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, price: 34.49, category: cat1})
  		@product.save!
  	end

  	it 'should NOT work if it is missing a name' do
  		cat1 = Category.find_or_create_by! name: 'Apparel'
  		@product = Product.new({description: "described", quantity: 4, price: 34.49, category: cat1})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a price' do
  		cat1 = Category.find_or_create_by! name: 'Apparel'
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, category: cat1})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a quantity' do
  		cat1 = Category.find_or_create_by! name: 'Apparel'
  		@product = Product.new({name:  'Hips', description: "described", price: 34.49, category: cat1})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  	it 'should NOT work if it is missing a category' do
  		cat1 = Category.find_or_create_by! name: 'Apparel'
  		@product = Product.new({name:  'Hips', description: "described", quantity: 4, price: 34.49})
  		expect {  @product.save! }.to raise_error(ActiveRecord::RecordInvalid)
  	end

  end
end
