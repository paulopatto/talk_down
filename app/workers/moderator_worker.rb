class ModeratorWorker
  include Sidekiq::Worker

  sidekiq_options queue: :moderation

  # Receive hash with:
  # - class
  # - id
  def perform(params)
    publishable = (params['class'].constantize).find(params['id'].to_i)
    sanity(publishable)
  end

  private

  def sanity(publishable)
    body = publishable.body
    # Isso não é performático mas atende
    Uglyterm.all.map(&:term).each do |uglyterm|
      body.gsub!(
        Regexp.new(Regexp.escape(uglyterm), Regexp::IGNORECASE),
        "*****"
      )
    end

    publishable.update_attribute(:body, body)

    publishable.publish!
  end
end
