def nyc_pigeon_organizer(data)

  #create new hash called pigeon_list
  pigeon_list = Hash.new
  
  #loop through each key (color, genter, lives) 
    #and look again inside each element arrives at array
      #insert name(stirng) as key(symbol) for new hash and element(symbol) as string
  
  #data(Hash)
  # key (symbol) - color, gender, lives / value(hash)- hash of {purple, grey, white}
  # inner_key(symbol)- purple, grey, white / array(array) - [Theo, Lucky etc]
  # name(string) - Theo, Lucky etc
  
  data.each do |key, value| 
   
    value.each  do |inner_key, array| 
      
      array.each do |name|
        
        #if pigeon_list Hash don't have pigeon name
        #create name(string) as key and value to empty hash(will contain color, gender etc)
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        
        #if pigeon_list[name] don't have key(:color, :gender etc)
        #create key with value of empty array(will contain purple, male etc)
        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end
      
      pigeon_list[name][key] << value
      
      #end of array.each 
      end
      
   
    #end of value.each  
    end
  end
  
  #return pigeon_list hash
  pigeon_list
end
