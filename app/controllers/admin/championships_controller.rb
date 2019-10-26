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

      # TODO: should be replaced with actual dates that the Admin should select
      @week_days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    end
  end
end