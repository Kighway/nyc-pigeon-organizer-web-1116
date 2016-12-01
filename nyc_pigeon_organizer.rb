def nyc_pigeon_organizer(pigeon_data)
  new_pigeon_list = {}
  pigeon_data.each do |data_type, value_hash|
    value_hash.each do |data_value, pigeon_list|
      pigeon_list.each do |pigeon_name|
        if new_pigeon_list.include?(pigeon_name)
          if new_pigeon_list[pigeon_name].include?(data_type)
            new_pigeon_list[pigeon_name][data_type].push(data_value.to_s)
          else
            new_pigeon_list[pigeon_name][data_type] = [data_value.to_s]
          end
        else
          new_pigeon_list[pigeon_name]= {}
          new_pigeon_list[pigeon_name][data_type] = [data_value.to_s]
        end
      end
    end
  end
  new_pigeon_list
end
