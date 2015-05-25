require 'spec_helper'

describe OrdersController do
  describe '#create' do
    order_params = {
      client_name: "Preca",
      client_code: "12345",
      items_attributes: { '0' => { quantity: 5 } }
    }

    it "creates an order" do
      expect do
        post :create, order: order_params
      end.to change { Order.count }.by(1)
    end

    it "redirects to #confirm" do
      post :create, order: order_params

      expect(response).to redirect_to(action: :confirm, id: assigns(:order).id)
    end
  end

  describe '#thank_you' do
    it "confirms the order" do
      order = create(:order, confirmed: false)

      get :thank_you, id: order.id

      expect(order.reload.confirmed).to eq(true)
    end
  end
end
