class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self }
    end

    def passengers
        rides.map {|ride| ride.passenger}
    end

    def drivers_mileage
        total = 0
        rides.each {|ride| total += ride.distance}
        total
    end

    def self.mileage_cap(distance)
        Driver.all.select {|driver|driver.drivers_mileage > distance}
    end
end