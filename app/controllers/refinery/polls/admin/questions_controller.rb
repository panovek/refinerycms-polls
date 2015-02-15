module Refinery
  module Polls
    module Admin
      class QuestionsController < ::Refinery::AdminController

        crudify :'refinery/polls/question', :title_attribute => 'title', :xhr_paging => true

        # override because acts_as_indexed dont work with utf8
        def index
          if params[:search].present?
            @questions = Question.where('LOWER(title) ILIKE ?', "%#{params[:search].downcase}%")
          else
            @questions = Question.all
          end
          @questions = @questions.order('created_at desc').paginate(:page => params[:page])
        end

        protected

        def question_params
          params.require(:question).permit(:end_date, :start_date, :title)
        end

      end
    end
  end
end
