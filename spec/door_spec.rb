RSpec.describe Car::Door do
    it "has a version number" do
        expect(Car::VERSION).not_to be nil
      end
    
      it "does something useful" do
        door = Car::Door.new
        expect(door).to be_instace_of(Car::Door)
      end
end
