class HomeController < ApplicationController
  def index
    @name="me"
    @age="4"
    @hobby = [ "멍때리기", "운동", "카페", "영화보기" ]
  end
end
