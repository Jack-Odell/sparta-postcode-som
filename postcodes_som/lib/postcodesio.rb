require_relative 'services/single_postcode_service'
require_relative 'services/multi_postcode_service'

class Postcodesio
  def single_postcode_service
    SinglePostcodeService.new
  end

  def multi_postcode_service
    MultiPostcodeService.new
  end
end


service = Postcodesio.new

# p service.single_postcode_service.get_single_postcode("SG75PX")
p service.multi_postcode_service.get_multiple_postcodes(["SG75PX", "AL109DG", 'AL40DL'])
