require 'rails_helper'

RSpec.describe InterventionsController, type: :controller do
  context 'GET #index' do
    it 'returns a successful response to the interventions#index page' do
      get :index
      expect(response).to be_successful
    end
  end

  context 'GET #show' do
    it 'returns a successful response after intervention creation' do
      intervention = Intervention.create!(
        author: 1,
        customer_id: 49, #must exist
        building_id: 2, #must exist
        battery_id: 2,
        column_id: 4,
        elevator_id: 13,
        employee_id: nil,
        report: "Test",
      )
      get :show, params: {id: intervention.to_param}
      expect(response).to be_successful
    end
  end

end