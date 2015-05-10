module OrdersHelper
  def setup_order(order)
    (Product.all - order.products).each do |product|
      order.items.build(product: product)
    end

    order
  end
end
