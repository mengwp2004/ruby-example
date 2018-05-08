require 'aasm'

class Job < ActiveRecord::Base
  include AASM

  aasm do
    state :sleeping, :initial => true
    state :running

    event :run, :after_commit => :notify_about_running_job do
      transitions :from => :sleeping, :to => :running
    end
  end

  def notify_about_running_job
    puts 'notify about running job'
  end
end

job = Job.where(state: 'sleeping').first!
job.run! # Saves the model and triggers the after_commit callback
