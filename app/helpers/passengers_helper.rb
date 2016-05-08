module PassengersHelper
    TRAVEL_TYPES = [OpenStruct.new(value: 1, label:"For Business"), 
                    OpenStruct.new(value: 2, label:"For Leisure"),
                    OpenStruct.new(value: 3, label:"For Family")]
    
    def travel_type_options
        TRAVEL_TYPES.collect{|i| [i.label, i.label]}
    end
    
    def travel_type_label(type)
        TRAVEL_TYPES.find{|i| i.value == type}.label
    end
end
