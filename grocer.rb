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
  while i < cart.length do
    current_item = cart[i]
    if find_item_by_name_in_collection(current_item[:item], coupons)
      #found coupon matching item in cart. now apply
      if find_item_by_name_in_collection("#{current_item[:item]} W/COUPON",cart)
        while current_item[:count] > coupons[:num]
        
         end
       else
         cart.push({
           :item => "#{current_item[:item]} W/COUPON",
           :price => coupons[]
         })
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
