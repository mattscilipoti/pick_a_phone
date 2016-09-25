require 'rails_helper'

RSpec.describe "CellPhones", type: :request do
  describe "GET /cell_phones" do
    it "works! (now write some real specs)" do
      get cell_phones_path
      expect(response).to have_http_status(200)
    end
  end
end
