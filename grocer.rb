def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    else
      i += 1
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  result = []
  i = 0
  while i < cart.length do
    if find_item_by_name_in_collection(cart[i][:item],result)
      find_item_by_name_in_collection(cart[i][:item],result)[:count] += 1
    else
      cart[i][:count] = 1
      result.push(cart[i])
    end
    i +=1 
  end
  result
end

def apply_coupons(cart, coupons)
  i=0
  while i < coupons.length do
   cart_item = find_item_by_name_in_collection(coupons[i][:item],cart)
   discount_item_name = "#{coupon[i][:item]} W/COUPON"
   cart_item_w_coupon = find_item_by_name_in_collection(discount_item_name,cart)
   
   if cart_item && cart_item[:count] >= coupons[i][:num]
     if cart_item_w_coupon
       cart_item_w_coupon += coupons[i][:num]
       cart_item[:count] -= coupons[i][:num]
     else 
       cart_item_w_coupon = {
         :item => discount_item_name,
         :price => 
       }
     end
   end
    i +=1
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
