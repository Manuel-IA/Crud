require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "search" do
      search = 'n'
      clients = Client.where ['name LIKE ?', "%#{search}%"] 
      assert_instance_of( Client, Client.new, [clients.first] )
  end

  test "save" do
    client = Client.new({name: 'Manuel', identificationType_id: 1, country_id: 169, department_id: 5, city_id: 1 })
    assert client.save
  end

  test "valid" do
    client = Client.new({name: 'Manuel', identificationType_id: 1, country_id: 169, department_id: 5, city_id: 1 })
    assert_equal client.name, 'Manuel'  
  end
end