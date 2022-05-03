# typed: true
# frozen_string_literal: true

class ModalComponentPreview < ApplicationComponentPreview
  def default
    render(ModalComponent.new) do |c|
      c.trigger do
        tag.button(
          "Open Modal",
          class: %w[
            xt-button
            py-2
            px-3
            rounded-md
            text-sm
            text-white
            font-bold
            bg-primary-500
            transition
            hover:text-white
            hover:bg-primary-600
            active:text-white
            active:bg-primary-700
            on:text-white
            on:bg-primary-600
          ],
        )
      end
      c.header do
        tag.h5("Some Title That Is Very Quite Long For No Real Reason")
      end
      c.body do
        tag.div(class: %w[xt-list xt-list-2]) do
          children =
            (1...20).map do |i|
              tag.div(class: %w[xt-card rounded-lg bg-white]) do |; children|
                children = [
                  tag.h6("Card #{i}", class: "xt-h6 mb-0 text-gray-700"),
                  tag.p(class: "xt-p text-gray-600") do
                    Faker::Lorem.paragraph(sentence_count: 10)
                  end,
                ]
                safe_join(children)
              end
            end
          safe_join(children)
        end
      end
    end
  end
end
