local death_time = 0
local death_player = nil

script.on_event(
  defines.events.on_player_died,
  function(event)
    if not event.cause then
      death_time = game.tick
      death_player = game.get_player(event.player_index)
    end
  end
)

script.on_event(
  defines.events.on_entity_died,
  function(event)
    if event.entity.type == "land-mine" and death_time == game.tick then
      death_player.force.print("Likely killed by a land mine")
    end
  end
)
