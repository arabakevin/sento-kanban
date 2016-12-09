module Sento
  module Kanban
    class CreateNewBoardCreatedActivity
      include Interactor
      include ActivityCreator

      def call
        key = 'sento.kanban.new_board_created'
        values = nil

        create_activity_from(context, key, values)
      end
    end
  end
end