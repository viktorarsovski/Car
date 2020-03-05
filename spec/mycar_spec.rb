RSpec.describe Car::MyCar do
  it "creates instance of MyCar class" do
  audi = Car::MyCar.new('audi', 'blue', 2020)
  expect(audi).to be_instance_of(Car::MyCar)
  end
    
  it "has starting speed defined to 0" do
  audi = Car::MyCar.new('audi', 'blue', 2020)
  expect(audi.speed).to eq(0)
  end

  it "increases current speed for 50 km/h" do
  audi = Car::MyCar.new("audi", "blue", 2020)  
  expect(audi.speed_up).to be(50)
  end
    
  it "increases current speed for 100 km/h" do
  audi = Car::MyCar.new("audi", "blue", 2020) 
  expect(audi.speed_up * 2).to be(100)
  end
    
  it "increases current speed for 150 km/h" do
  audi = Car::MyCar.new("audi", "blue", 2020) 
  expect(audi.speed_up * 3).to be(150)
  end
end
    