class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks += [id: task.id, title: task.title, content: task.content]
    puts "【追加】#{task.info}"
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"

    if @tasks.empty?
      puts "【！】 タスクはありません。"
    elsif @tasks.each do |task|
            puts "[No.#{task[:id]}]#{task[:title]}:#{task[:content]}"
          end
    end

    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(id:)
    task = @tasks.find { |task| task[:id] == id }

    if task.nil?
      puts "【！】 該当idのタスクはありません。"# rubocop:disable all
    else
      @tasks.delete(task)
      puts "【削除】[No.#{task[:id]}] #{task[:title]}:#{task[:content]}"
    end
  end
end
