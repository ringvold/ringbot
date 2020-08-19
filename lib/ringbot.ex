defmodule Ringbot do
  use Application
  alias Alchemy.Client


  defmodule Commands do
    use Alchemy.Cogs
    alias Alchemy.Embed
    import Embed

    Cogs.def mcstatus do
      {:ok, resp} = MCPing.get_info("mc.thepromisedlan.no")
      IO.inspect resp
      players_online = resp["players"]["online"]
      description = hd(resp["description"]["extra"])["text"]
      %Embed{}
        |> title("MC server status")
        |> description(description)
        |> field("Brukere online", players_online)
        |> Embed.send
    end
  end

  def start(_type, _args) do
    run = Client.start(Application.get_env!(:myapp, :discord_token))
    use Commands
    run
  end

end
