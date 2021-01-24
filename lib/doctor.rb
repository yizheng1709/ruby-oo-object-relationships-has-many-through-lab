class Doctor
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self  
    end 

    def self.all
        @@all 
    end 

    def appointments 
        Appointment.all.select {|appointment| appointment.doctor == self}
    end 

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    def patients
        appointments.collect {|appointment| appointment.patient}
    end 
end 

