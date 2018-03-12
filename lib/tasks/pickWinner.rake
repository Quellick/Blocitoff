namespace :pick do # allows grouping of tasks within same namespace instead of :pick_winner we can put :winner within the :pick namespace then we call them using `rake pick:winner or rake pick:prize`
    task :winner => :environment do
        puts "Winner: #{pick(User).email}"
    end

    task :prize => :environment do
        puts "Item: #{pick(Item).name}"
    end
    
    task :all => [:prize, :winner]  do# allows running of all tasks in order passed
    end
    
    def pick(model_class)
        model_class.order("RANDOM()").first
    end
end