module Admin
    module Withdraws
      class LitecoinsController < ::Admin::Withdraws::BaseController
        load_and_authorize_resource :class => '::Withdraws::Litecoin'
  
        def index
          start_at = DateTime.now.ago(60 * 60 * 24)
          @one_litecoins = @litecoins.with_aasm_state(:accepted).order("id DESC")
          @all_litecoins = @litecoins.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
        end
  
        def show
        end
  
        def update
          @newcoin.process!
          redirect_to :back, notice: t('.notice')
        end
  
        def destroy
          @newcoin.reject!
          redirect_to :back, notice: t('.notice')
        end
      end
    end
end
  