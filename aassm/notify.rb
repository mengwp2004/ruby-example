require 'aasm'

class Job
  include AASM

  aasm do
    state :sleeping, :initial => true, :before_enter => :do_something
    state :running
    state :finished

    after_all_transitions :log_status_change

    event :run, :after => :notify_somebody do
      before do
        log('Preparing to run')
      end

      transitions :from => :sleeping, :to => :running, :after => Proc.new {|*args| set_process(*args) }
      transitions :from => :running, :to => :finished, :after => LogRunTime
    end

    event :sleep do
      after do
        puts 'after sleep'
      end
      error do |e|
        puts 'error in sleep'
      end
      transitions :from => :running, :to => :sleeping
    end
  end

  def log_status_change
    puts "changing from #{aasm.from_state} to #{aasm.to_state} (event: #{aasm.current_event})"
  end

  def set_process(name)
    puts 'set process #{name}'
  end

  def do_something
    puts 'do someting'
  end

  def notify_somebody
    puts 'notify'
  end

end


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

job = Job.new
job.run(:running, :defragmentation)


