namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      
      show_spinner("Dropping DB...") do
        %x(rails db:drop:_unsafe)
      end

      show_spinner("Creating DB...") do
        %x(rails db:create)
      end

      show_spinner("Executing migrations...") do
        %x(rails db:migrate) 
      end

      show_spinner("Seeding DB...") do
        %x(rails db:seed)
      end

    else
      puts "You're not in development environment"
    end
  end

private
  def show_spinner(starting_msg, ending_msg = "Done.")
    spinner = TTY::Spinner.new("[:spinner] #{starting_msg }")
    spinner.auto_spin
    yield
    spinner.success("(#{ending_msg})")
  end
end
