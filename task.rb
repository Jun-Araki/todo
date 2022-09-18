# rubocop:disable all
class Task
  attr_accessor :id
  attr_reader :title, :content

  @@count = 0

  def initialize(**params)
    @id = (@@count += 1)
    @title = params[:title]
    @content = params[:content]
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end
# rubocop:enable all