require 'rails_helper'

#assign @customers obj and equate to Customer.all
RSpec.describe 'Customers', type: :request do
  it "assigns all customers to @customers" do
    get customers_path
    pp customers_path
    expect(assigns(:customers)).to eq(Customer.all)
  end
end