require 'aasm'

class Job
  include AASM

  aasm do
    state :stage1, :initial => true
    state :stage2
    state :stage3
    state :completed

    event :stage1_completed do
      transitions from: :stage1, to: :stage3, guard: :stage2_completed?
      transitions from: :stage1, to: :stage2
    end
  end

  def stage2_completed?
    true
  end
end

job = Job.new
puts job.stage1_completed
puts job.aasm.current_state # stage3

