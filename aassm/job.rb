
require 'aasm'

class Job
  include AASM

  aasm  :whiny_transitions => false do
    state :sleeping, :initial => true
    state :running, :cleaning

    event :run do
      transitions :from => :sleeping, :to => :running
    end

    event :clean do
      transitions :from => :running, :to => :cleaning
    end

    event :sleep do
      transitions :from => [:running, :cleaning], :to => :sleeping
    end
  end

end

job = Job.new
puts job.sleeping? # => true
puts job.may_run?  # => true
puts job.run
puts job.running?  # => true
puts job.sleeping? # => false
puts job.may_run?  # => false
puts job.run       # => raises AASM::InvalidTransition


