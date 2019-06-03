defmodule ExBot do
  def start(_type, _args) do
    import BotSupervisor
    BotSupervisor.start_link()
  end
end