class Ride
    attr_reader :distance, :driver, :passenger
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total = 0
        Ride.all.each {|ride| total += ride.distance}
        total / Ride.all.length
    end
end