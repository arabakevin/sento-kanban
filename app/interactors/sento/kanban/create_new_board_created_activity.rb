require_dependency 'sento/kanban/concerns/activity_creator'
require_dependency 'sento/kanban/concerns/interactor_timer'

module Sento
  module Kanban
    class CreateNewBoardCreatedActivity
      include Interactor
      include Sento::Kanban::ActivityCreator
      include Sento::Kanban::InteractorTimer

      def call
        key = 'sento.kanban.new_board_created'
        values = { board_title: context.board.title }

        create_activity_from(context, key, values)
      end
    end
  end
end
