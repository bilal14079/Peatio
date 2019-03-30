module Private
    module Deposits
      class NewcoinsController < ::Private::Deposits::BaseController
        include ::Deposits::CtrlCoinable

        def create
        end
      end
    end
  end
  