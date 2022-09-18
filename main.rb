# rubocop:disable all
class Task
  attr_accessor :id, :title, :content

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

class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks += [id: task.id, title: task.title, content: task.content]
    puts "【追加】[No.#{task.id}] #{task.title}:#{task.content}"
  end

  def info

    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    
    if @tasks.empty?
      puts "【！】 タスクはありません。"
    elsif
      @tasks.each do |value|
      puts "[No.#{value[:id]}]#{value[:title]}:#{value[:content]}"
      end
    end

    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end
end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
# rubocop:enable all