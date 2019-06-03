!defmodule ExBot do
  def start(_type, _args) do
    import BotSupervisor
    IO.puts "Bot started!"
    BotSupervisor.start_link()
  end
end