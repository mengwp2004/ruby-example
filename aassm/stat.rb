require 'aasm'


aasm :no_direct_assignment => true do
  state :sleeping, :initial => true
  state :running

  event :run do
    transitions :from => :sleeping, :to => :running
  end
end

job.aasm_state # => 'sleeping'
job.aasm_state = :running # => raises AASM::NoDirectAssignmentError↑ 這裡無法直接將狀態改變
job.aasm_state # => 'sleeping'
