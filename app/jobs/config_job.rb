# frozen_string_literal: true

class ConfigJob < ApplicationJob
  RUN_EVERY = 30.seconds

  def perform
    puts "ConfigJob is running at #{Time.current}"

    # Replay the job
    sleep RUN_EVERY
    self.class.new.perform
  end
end
