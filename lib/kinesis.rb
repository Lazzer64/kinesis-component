require_relative '../../resource/lib/resource.rb'

class Kinesis < Resource
  require_relative 'kinesis/stream'

  def initialize(*args)
    super(*args)
    @aws_client = Aws::Kinesis::Client.new(region: @desired_properties[:region])
  end
end
