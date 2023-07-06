require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )}

  describe "GET /index" do
    it 'gets a list of apartments' do
      apartment = user.apartments.create(
        street:'2123 Head St',
        unit:'848',
        city:'Plantee',
        state:'Idaho',
        square_footage:'1500',
        price:'1930',
        bedrooms: 3,
        bathrooms:2.5,
        pets:'yes',
        image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
      )
      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.first['street']).to eq('2123 Head St')
    end
  end
  
  describe "POST /create" do
    it 'creates a new apartment' do
        User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
        )
      my_user = User.first
       apartment_params = {
        apartment: {
          user_id:my_user.id,
          street:'2123 Head St',
          unit:'848',
          city:'Plantee',
          state:'Idaho',
          square_footage:'1500',
          price:'1930',
          bedrooms: 3,
          bathrooms:2.5,
          pets:'yes',
          image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
        }
      }
      
      post '/apartments', params: apartment_params
      expect(response).to have_http_status(200)
      apartment = Apartment.first      
      expect(apartment.city).to eq 'Plantee'
    end
  end
end
