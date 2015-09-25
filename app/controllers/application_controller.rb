class ApplicationController < ActionController::Base
  protect_from_forgery :with => :exception
  before_action :detect_device_format

  private

  def detect_device_format
    if browser.mobile? || browser.tablet?
      @variant = :mobile
    else
      @variant = :desktop
    end
    request.variant = @variant
  end


end
