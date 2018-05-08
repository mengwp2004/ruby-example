require 'aasm'

class Cleaner
  include AASM

  aasm do
    state :idle, :initial => true
    state :cleaning

    event :clean do
      transitions :from => :idle, :to => :cleaning, :guard => :cleaning_needed?
    end

    event :clean_if_needed do
      transitions :from => :idle, :to => :cleaning do
        guard do
          cleaning_needed?
        end
      end
      transitions :from => :idle, :to => :idle
    end
  end

  def cleaning_needed?
    false
  end
end

job = Cleaner.new
puts job.may_clean?            # => false
#job.clean                 # => raises AASM::InvalidTransition
puts job.may_clean_if_needed?  # => true
puts job.clean_if_needed!      # idle
#puts job.clean
