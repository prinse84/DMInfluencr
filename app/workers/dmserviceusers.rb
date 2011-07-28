class DMServiceUsers
  @queue = :addusers_queue
  
  def self.perform
    info = DailyMile.entries
  end
  
end