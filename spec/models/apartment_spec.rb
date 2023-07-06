# apartment = Apartment.create(
#   street:'2123 Head St',
#   unit:'848',
#   city:'',
#   state:'Idaho',
#   square_footage:'1500',
#   price:'1930',
#   bedrooms: 3,
#   bathrooms:2.5,
#   pets:'yes',
#   image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
# )


require 'rails_helper'
# for validations
RSpec.describe 'Apartment', type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )}
    it 'should validate city' do
      apartment = Apartment.create(
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:city]).to include("can't be blank")
    end
    it 'should validate street' do
      apartment = Apartment.create(
        city:'Plantee',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:street]).to include("can't be blank")
    end
    it 'should validate unit' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:unit]).to include("can't be blank")
    end
    it 'should validate state' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        square_footage:'1500',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:state]).to include("can't be blank")
    end
    it 'should validate square_footage' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:square_footage]).to include("can't be blank")
    end
    it 'should validate price' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:price]).to include("can't be blank")
    end
    it 'should validate bedrooms' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:bedrooms]).to include("can't be blank")
    end
    it 'should validate bathrooms' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms:3,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:bathrooms]).to include("can't be blank")
    end
    it 'should validate pets' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms:3,
        bathrooms:2.5,
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      expect(apartment.errors[:pets]).to include("can't be blank")
    end
    it 'should validate image' do
      apartment = Apartment.create(
        city:'Plantee',
        street:'2123 Head St',
        unit:'848',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms:3,
        bathrooms:2.5,
        pets:'yes',
      )
      expect(apartment.errors[:image]).to include("can't be blank")
    end
end