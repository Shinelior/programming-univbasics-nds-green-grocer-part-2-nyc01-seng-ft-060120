require_relative './part_1_solution.rb'

def apply_coupons(cart,coupons)
  index = 0  
  new_array=[]
  cart.each do |arr|
 itaem_coupon = find_item_by_name_in_collection(arr[:iteam],coupons) 
  if itaem_coupon
    itaem_coupon.each do |inar|
    if inar[:count] > coupons[index][:num]
      new_array[index][:count] = inar[:count] - coupons[index][:num]
     new_array[index][:price] = (inar[:price] - coupons[index][:cost])/ new_array[index][:count]
      new_array[index][:iteam] = inar[:iteam]
      new_array[index][:clearnce] = inar[:clearnce]
    else 
       new_array[index][:count] = inar[:count]
       new_array[index][:price] = (inar[:price] - coupons[index][:cost])/ new_array[index][:count]
       new_array[index][:iteam] = inar[:iteam]
      new_array[index][:clearnce] = inar[:clearnce]
    end
    index += 1 
  end  
else
  new_array << arr
end
end
return new_array
end
  
      
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart


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
