def consolidate_cart(cart)
  hash = {}
  
  cart.each do |item|
    item.each do |key, val|
      hash[key] = val
      hash[key][:count] = cart.count(item)
    end
  end
  
  hash
end

def apply_coupons(cart, coupons)
  cart.each do |item, values|
    coupons.each do |ele|
      ele.each do |coupon_item, coupon_values|
        if item == coupon_item
          item[:count] -= coupon_item[:num]
          string = item + " W/COUPON"
          cart[string] = coupon_values
        end
      end
    end
  end
  
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
