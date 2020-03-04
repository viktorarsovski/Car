RSpec.describe Car::MyCar
   it "creates instance of MyCar class" do
    volvo = Car::MyCar.new('volvo', '2020', 'blue')
    expect(volvo).to be_instance_of(Car::MyCar)
   end

   it "has starting speed defined to 0" do
    volvo = Car::MyCar.new('volvo', '2020', 'blue')
    expect(volvo.car_speed).to eq(0)

end