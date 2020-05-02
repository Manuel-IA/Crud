require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
  client =
        {name: 'Manuel', identificationType_id: 1, country_id: 169, department_id: 5, city_id: 1 }
  describe 'POST #create' do
    cant = Client.all
    it 'add client' do
        client = Client.create(client)
        expect(Client.count).not_to eq cant
    end
  end
  describe 'PUT #updated' do
  client_one =
        {name: 'Manuel', identificationType_id: 1, country_id: 169, department_id: 5, city_id: 1 }
    it 'updated' do
        client_two = {name: 'changed', identificationType_id: 1, country_id: 169, department_id: 5, city_id: 1 }
        client_one.update(client_two)
        expect(client_one[:name]).to eq 'changed'
    end
  end
end