require 'spec_helper'

describe OrdersHelper do
  describe "#setup_order" do
    context 'when there are no items' do
      it "builds an item for every product" do
        create_list(:product, 3)
        order = Order.new

        helper.setup_order(order)

        expect(order.items.length).to eq 3
      end
    end

    context "when the order has items already" do
      it "only adds the remaining items" do
        product = create(:product)
        create_list(:product, 2)

        order = create(:order)
        order.items.create(product: product)

        expect{ helper.setup_order(order) }.to change { order.items.length }.from(1).to(3)
      end

    end
  end
end
