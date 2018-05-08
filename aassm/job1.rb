require 'aasm'


class LogRunTime
  # optional args parameter can be omitted, but if you define initialize
  # you must accept the model instance as the first parameter to it.
  def initialize(job, args = {})
    @job = job
  end

  def call
    log "Job was running for #{@job.run_time} seconds"
  end
end



class Job
  include AASM

  aasm do
    state :sleeping, :initial => true, :before_enter => :do_something
    state :running, after_commit: :my_commit
    state :finished
    state :last


    event :run, :after => :notify_somebody do
      transitions :from => :sleeping, :to => :running, :after => Proc.new {|*args| set_process(*args) } 
      transitions :from => :running, :to => :finished, :after => Proc.new {|*args| set_process1(*args) }
    end
    
    event :finish do
      puts 'finish--------------------'
      transitions :from => :running, :to => :finished
      after do
         my_commit1
      end

    end

  end

  def my_commit1
    puts 'my commit1'

  end

  def my_commit
    puts 'my commit'

  end



  def notify_somebody
    puts 'notify'
  end

  def set_process(name)
    puts "set process #{name}"
  end

  def do_something()
    puts 'do something'
  end

end

job = Job.new
job.run('hello')
puts job.running?
puts job.finish
