# rubocop:disable all
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

  def delete(id:)
    task = @tasks.find { |task| task.id == id }

    if task.nil?
      puts '【！】 該当idのタスクはありません。'
    else
      @tasks.delete(task)
      puts "【削除】#{task.info}"
    end
  end

end
# rubocop:enable all