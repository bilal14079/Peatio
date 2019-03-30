module Private::Withdraws
    class NewcoinsController < ::Private::Withdraws::BaseController
      include ::Withdraws::Withdrawable
    end
end
  