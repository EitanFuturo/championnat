module Admin
  class ChampionshipsController < ApplicationController

    helper_method :championship, :championship_week_days

    def championship_week_days
      start_date = championship.start_date

      start_date...start_date + championship.length
    end

    def championship
      Admin::Championship.all.first
    end

    def admin_view
      @user_groups = UserGroup.all
    end
  end
end