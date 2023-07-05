require 'rails_helper'

RSpec.describe Apartment, type: :model do
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
        apartment_params = {
          apartment: {
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

        apartment = JSON.parse(response.body)
        apartment = Apartment.first
        expect(response).to have_http_status(200)
        expect(apartment.first['city']).to eq('Plantee')
      end
    end
  
    describe "PATCH /update" do
    it 'update ' do
      Apartment.create(
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
      
      apartment_params = {
        Apartment: {
          street:'2123 Head St',
          unit:'848',
          city:'Plantee',
          state:'Idaho',
          square_footage:'1500',
          price:'1200',
          bedrooms: 3,
          bathrooms:2.5,
          pets:'no',
          image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'
        }
      }
      apartment = Apartment.first
      post "/apartments/#{apartment.id}", params: apartment_params
      update_apartment = Apartment.first
      expect(response).to have_http_status(200)
      expect(apartment.first['pets']).to eq('no')
    end
  end
  describe "DELETE /destroy" do
    it 'deletes an apartment' do
      Apartment.create(
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
      apartment = Apartment.first
      delete "/apartments/#{apartment.id}"

      apartments = Apartment.all
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq(0)
    end
  end
end
