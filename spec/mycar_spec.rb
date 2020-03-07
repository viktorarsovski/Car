RSpec.describe Car::MyCar do
  let(:audi) { Car::MyCar.new('audi', 'blue', 2020) }
  let(:failure) { 'water pump' }

  it "creates instance of MyCar class" do
    expect(audi).to be_instance_of(Car::MyCar)
  end

  it "has starting speed defined to 0" do
    expect(audi.speed).to eq(0)
  end

  it "increases current speed for 10 km/h" do
    audi.speed_up
    expect(audi.speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it "increases current speed for 40 km/h" do
    audi.speed_up(40)
    expect(audi.speed).to eq(40)
  end

  it "increases current speed for 100 km/h" do
     audi.speed_up(100)
     expect(audi.speed).to eq(100)
  end

  it "slows down" do
    audi.slow_down
    expect(audi.speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it 'changes the color of the object' do
    audi.spray_paint :black
    expect(audi.color).to eq(:black)
  end

  it 'has no defects' do
    expect(audi.defects).not_to include(failure)
  end

  it 'adds defects' do
    audi.add_defect(failure)
    expect(audi.defects).to include(failure)
  end

  it 'lists all the defects' do
    audi.add_defect(failure)
    audi.add_defect('oil leak')
    expect(audi.service_info).to eq("Defects to be fixed: #{failure}, oil leak.")
  end
end
