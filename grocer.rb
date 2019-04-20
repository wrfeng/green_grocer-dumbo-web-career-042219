require 'pry'
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
  hash = {}
  return cart if coupons.empty?

  cart.each do |item, values|
    coupons.each do |ele|
      hash[item] = values
      if item == ele[:item]
        hash[item + " W/COUPON"] = {:price => ele[:cost], :clearance => values[:clearance], :count => coupons.count(coupon_item)}
        hash[item][:count] -= ele[:num] if item == ele[:item]
      end
    end
  end
  
  hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
