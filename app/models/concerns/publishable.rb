module Concerns
  module Publishable
    extend ActiveSupport::Concern

    included do
      after_create :moderate!

      state_machine :state, :initial => :pending do
        after_transition on: :moderate, do: :queue_on_sidekiq
        event :moderate do
          transition :pending => :moderation
        end

        event :publish do
          transition :moderation => :published
        end
      end
    end

    private

    def queue_on_sidekiq
      ModeratorWorker.perform_async({ class: self.class, id: self.id })
    end
  end
end
