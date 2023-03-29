-------------------
-- LUA UTILITIES --

-- for key,value in pairs(input_manager) do
	-- print(key, value)
-- end
-- for key,value in pairs(getmetatable(input_manager)) do
	-- print(key, value)
-- end

-- for i,v in pairs(input_manager) do print(i,v) end

-- print("x = " .. tostring(x))

-- LUA UTILITIES --
-------------------

local mod = get_mod("Fly You Fools 2")

-- Booleans
mod.is_active_FYF2 = false
mod.first_iteration = false

-- Backup
mod.backup_move_acceleration_down = mod.backup_move_acceleration_down or PlayerUnitMovementSettings.move_acceleration_down or 5
mod.backup_gravity_acceleration = mod.backup_gravity_acceleration or PlayerUnitMovementSettings.gravity_acceleration or 11
mod.backup_MAX_FALL_DAMAGE = mod.backup_MAX_FALL_DAMAGE or PlayerUnitMovementSettings.fall.heights.MAX_FALL_DAMAGE or 150
mod.backup_MIN_FALL_DAMAGE_HEIGHT = mod.backup_MIN_FALL_DAMAGE_HEIGHT or PlayerUnitMovementSettings.fall.heights.MIN_FALL_DAMAGE_HEIGHT or 7
mod.backup_HARD_LANDING_FALL_HEIGHT = mod.backup_HARD_LANDING_FALL_HEIGHT or PlayerUnitMovementSettings.fall.heights.HARD_LANDING_FALL_HEIGHT or 7
mod.backup_fov = mod.backup_fov or 1.6
mod.backup_MAX_MIN_PITCH = 1.3613568165555769

------------
-- EVENTS --

mod.update = function (t)

end

-- EVENTS --
------------

--------------------
-- USER FUNCTIONS --

mod.toggle_FYF2 = function (self)
    if not mod.is_active_FYF2 then
        mod:activate_FYF2()
    else
        mod:deactivate_FYF2()
    end
end

mod.activate_FYF2 = function (self)
    mod.is_active_FYF2 = true
    mod:echo("FYF is active")

    mod:routine_FYF2()
end

mod.routine_FYF2 = function (self)
    local player_unit = Managers.player:local_player().player_unit

    local first_person_extension = ScriptUnit.has_extension(player_unit, "first_person_system")
    local whereabouts_extension = ScriptUnit.extension(player_unit, "whereabouts_system")
    local locomotion_extension = ScriptUnit.extension(player_unit, "locomotion_system")
    local status_extension = ScriptUnit.has_extension(player_unit, "status_system")
    local health_extension = ScriptUnit.has_extension(player_unit, "health_system")
    local buff_extension = ScriptUnit.has_extension(player_unit, "buff_system")
    local movement_table = PlayerUnitMovementSettings.get_movement_settings_table(player_unit)

    -- Movement
    mod:movement_FYF2()

    -- FoV
    mod:fov_FYF2()

    -- View
    mod:view_FYF2()
end

mod.movement_FYF2 = function(self)
    for key,value in pairs(ScriptUnit.has_extension(Managers.player:local_player().player_unit, "first_person_system")) do
        print(key, value)
    end
    for key,value in pairs(getmetatable(ScriptUnit.has_extension(Managers.player:local_player().player_unit, "first_person_system"))) do
        print(key, value)
    end
end

mod.fov_FYF2 = function(self)
	if mod:get("custom_fov_group_FYF2") then
        if not mod.first_iteration then
            mod.backup_fov = Managers.state.camera:fov("player_1")
        end
        
        -- ScriptViewport.camera(ScriptWorld.viewport(Managers.world:world("level_world")

        -- mod:echo(Camera.get_data(ScriptViewport.camera(ScriptWorld.viewport(Managers.world:world("level_world"), "player_1")), "unit"))
        
        -- Camera.set_vertical_fov(ScriptViewport.camera(ScriptWorld.viewport(Managers.world:world("level_world"), "player_1")), (mod:get("custom_fov_FYF2") * math.pi) / 180)
        -- Camera.set_vertical_fov(Viewport.get_data(World.get_data(Managers.world:world("level_world"), "viewports").player_1, "camera"), (mod:get("custom_fov_FYF2") * math.pi) / 180)
	
        -- mod:echo(Managers.state.camera:current_node_tree_root_unit("player_1"))

        -- for key,value in pairs(Managers.state.camera) do
        --     print(key, value)
        -- end
        -- for key,value in pairs(getmetatable(Managers.state.camera)) do
        --     print(key, value)
        -- end
    end
end

mod.view_FYF2 = function(self)
    -- local cam = ScriptViewport.camera(ScriptWorld.viewport(Managers.world:world("level_world"), "player_1"))
	-- local cam_fov = Camera.vertical_fov(cam)
    -- Camera.set_far_range(cam, 50000)

    -- for key,value in pairs(Managers.state.camera) do
    --     print(key, value)
    -- end
    -- for key,value in pairs(getmetatable(Managers.state.camera)) do
    --     print(key, value)
    -- end

    -- No limits
    ScriptUnit.has_extension(Managers.player:local_player().player_unit, "first_person_system").MAX_MIN_PITCH = math.pi
end

mod.deactivate_FYF2 = function (self)
    mod.is_active_FYF2 = false
    mod:echo("FYF is inactive")

    mod:backup_FYF2()
end

mod.backup_FYF2 = function (self)
    local player_unit = Managers.player:local_player().player_unit

    local first_person_extension = ScriptUnit.has_extension(player_unit, "first_person_system")
    local whereabouts_extension = ScriptUnit.extension(player_unit, "whereabouts_system")
    local locomotion_extension = ScriptUnit.extension(player_unit, "locomotion_system")
    local status_extension = ScriptUnit.has_extension(player_unit, "status_system")
    local health_extension = ScriptUnit.has_extension(player_unit, "health_system")
    local buff_extension = ScriptUnit.has_extension(player_unit, "buff_system")
    local movement_table = PlayerUnitMovementSettings.get_movement_settings_table(player_unit)

    -- Movement
    Camera.set_vertical_fov(ScriptViewport.camera(ScriptWorld.viewport(Managers.world:world("level_world"), "player_1")), mod.backup_fov)

    -- View
    first_person_extension.MAX_MIN_PITCH = mod.backup_MAX_MIN_PITCH
end

-- USER FUNCTIONS --
--------------------

-- POSITION_LOOKUP[unit]
-- ScriptUnit.has_extension(unit, "first_person_system")
-- ScriptUnit.extension(unit, "whereabouts_system")
-- ScriptUnit.extension(unit, "locomotion_system")
-- ScriptUnit.has_extension(player_unit, "status_system")
-- ScriptUnit.has_extension(player_unit, "health_system")
-- PlayerUnitMovementSettings.get_movement_settings_table(player_unit)
-- ScriptUnit.has_extension(player_unit, "buff_system")

-- local look_raw = input_extension:get("look_raw_controller")
-- local move = input_extension:get("move_controller")

-- local health_extension = ScriptUnit.extension(Managers.player:local_player().player_unit, "health_system")
-- health_extension.is_invincible = true
-- Unit.set_unit_visibility(player_unit, true)

--     local movement_table = PlayerUnitMovementSettings.get_movement_settings_table(player_unit)
--     if movement_table then
--         movement_table.move_acceleration_down = 0
--         movement_table.gravity_acceleration = 0
--         movement_table.fall.heights.MAX_FALL_DAMAGE = 0
--         movement_table.fall.heights.MIN_FALL_DAMAGE_HEIGHT = math.huge
--         movement_table.fall.heights.HARD_LANDING_FALL_HEIGHT = math.huge
--     end
-- end

-- local game_mode = Managers.state.game_mode:game_mode()
-- game_mode:set_photomode_enabled(not game_mode:photomode_enabled())
-- Unit.set_unit_visibility(first_person_extension.first_person_attachment_unit, true)
-- first_person_extension:hide_weapons("third_person_mode", true)