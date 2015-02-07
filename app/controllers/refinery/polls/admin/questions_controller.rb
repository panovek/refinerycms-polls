module Refinery
  module Polls
    module Admin
      class QuestionsController < ::Refinery::AdminController

        crudify :'refinery/polls/question', :title_attribute => 'title', :xhr_paging => true


        protected

        def question_params
          params.require(:question).permit(:end_date, :start_date, :title)
        end

      end
    end
  end
end
