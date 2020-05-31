require 'rails_helper'

RSpec.describe TaskController, type: :controller do
  describe "tasks#index" do
    it "should list the tasks in the database" do
      task1 = FactoryBot.create(:task)
      task2 = FactoryBot.create(:task)
      get :index
      expect(response).to have_http_status(:success)
      reponse_value = ActiveSupport::JSON.decode(@response.body)
      expect(reponse_value.count).to eq(2)
    end
  end
end
