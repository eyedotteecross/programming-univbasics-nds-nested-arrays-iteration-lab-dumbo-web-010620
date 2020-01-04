require 'pry'

def join_ingredients (array)
i = 0 
favs_outer = []
  while i < array.size #parameter array  
  j = 0
  favs_inner = []
    while j < array[i].size
    favs_inner << array[i][j]
    j += 1
    end
  favs_outer << "I love #{favs_inner[0]} and #{favs_inner[1]} on my pizza"  
  i += 1
  end 
favs_outer
end 

def find_greater_pair (array)
i = 0 
greater_outer = []
  while i < array.size 
  j = 1
  greater_inner = array[i][0]
    while j < array[i].size  
      if greater_inner > array[i][j]  
      greater_outer << greater_inner
      else
      greater_outer << array[i][j]  
      end   
    j += 1 
    end
  i += 1
  end
greater_outer
end

def total_even_pairs (array)
i = 0
total = 0   
  while i < array.size 
  j = 0
  inner_total = 0
    while j < array[i].size
      element = array[i][j]
      if element % 2 == 0  #is element even ? 
      inner_total += element
      j += 1
       binding.pry
      else
      inner_total = 0 
      j = array[i].size
      end
    total << inner_total 
   
    end 
  i += 1
  end 
total   
end 




