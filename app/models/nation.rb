class Nation < ActiveRecord::Base
  attr_accessible :bronze, :gold, :ioc_code, :name, :silver
  

  HUMAN_ATTRIBUTE_NAMES = { :ioc_code => "Country Code", :name => "Country" }
  
  def self.human_attribute_name(attribute)
   HUMAN_ATTRIBUTE_NAMES[attribute.to_sym] || super 
  end

  def self.update_from_hash_array(hash)
    logger.debug "Starting hash processing"
    transaction do
      hash.each do |el|
        logger.debug "Processing element #{el.inspect}"
        temp_ioc = el['flag'][-7..-5]
        nation = Nation.get_or_create_by_ioc temp_ioc, el['country']
        nation.bronze = el['bronze'].to_i
        nation.silver = el['silver'].to_i
        nation.gold = el['gold'].to_i
        nation.save
      end
    end
  end

  def self.get_or_create_by_ioc(ioc, name=nil)
    nation = Nation.find_by_ioc_code ioc
    if(nation == nil) then
      nation = Nation.new
      nation.ioc_code = ioc
      nation.name = name
    end
    nation
  end
end
