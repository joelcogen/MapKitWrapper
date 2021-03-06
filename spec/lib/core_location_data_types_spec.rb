describe 'LocationCoordinate' do
  before do
    lc_1 = CoreLocation::DataTypes::LocationCoordinate.new(5, 8)
    lc_2 = CoreLocation::DataTypes::LocationCoordinate.new([5, 8])
    lc_3 = CoreLocation::DataTypes::LocationCoordinate.new(CLLocationCoordinate2DMake(5, 8))
    lc_4 = CoreLocation::DataTypes::LocationCoordinate.new(lc_3)
    @array = [lc_1, lc_2, lc_3, lc_4]
  end

  it 'should return the latitude' do
    @array.each do |lc|
      lc.latitude.should.equal 5
    end
  end

  it 'should assign the latitude' do
    @array.each do |lc|
      lc.latitude = 10
      lc.latitude.should.equal 10
    end
  end

  it 'should return the longitude' do
    @array.each do |lc|
      lc.longitude.should.equal 8
    end
  end

  it 'should assign the longitude' do
    @array.each do |lc|
      lc.longitude = 10
      lc.longitude.should.equal 10
    end
  end

  it 'should return an array' do
    @array.each do |lc|
      lc.to_array.should.equal [5, 8]
    end
  end

  it 'should contain a CLLocationCoordinate2D' do
    @array.each do |lc|
      lc.sdk.is_a?(CLLocationCoordinate2D).should.equal true
    end
  end
end