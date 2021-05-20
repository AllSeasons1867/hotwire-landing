class Greeting < ApplicationRecord
    has_rich_text :body
    validates :body, presence: true
    # broadcasts_to ->(greeting) {'greetings'}, target: :greetings
    # broadcasts
    after_create_commit {broadcast_prepend_to 'greetings'}
    after_update_commit {broadcast_replace_to 'greetings'}
    after_destroy_commit {broadcast_remove_to 'greetings'}
end
