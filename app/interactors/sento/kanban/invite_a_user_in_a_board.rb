module Sento
  module Kanban
    class InviteAUserInABoard
      include Interactor

      def call
        board = context.board
        user = context.user

        context.fail! unless board && user

        board.users << user
      end
    end
  end
end