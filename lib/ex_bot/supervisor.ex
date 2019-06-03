defmodule BotSupervisor do
    def start_link do
      import Supervisor.Spec
      import BotConsumer
  
      children = [BotConsumer]
  
      Supervisor.start_link(children, strategy: :one_for_one)
    end
  end