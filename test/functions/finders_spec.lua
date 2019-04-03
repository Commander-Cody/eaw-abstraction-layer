test(
    "When calling Find_First_Object with wrong input -> should throw error",
    function()
        assert.has.errors(function() eaw.environment.Find_First_Object({}) end)

        assert.has.errors(function()
            eaw.environment.Find_First_Object(eaw.types.game_object{name = "Dummy"})
        end)

        assert.has.errors(function()
            eaw.environment.Find_First_Object(eaw.types.faction{name = "Dummy"})
        end)
    end
)

test(
    "When calling Find_First_Object with type name -> should return game_object with requested type",
    function()
        local actual = eaw.environment.Find_First_Object("My_Type")
        local expected = {name = "My_Type"}
        -- TODO: busted migration
        -- test.matches_game_object(expected, actual)
    end
)

test(
    "When calling Find_All_Objects_Of_Type with wrong input type -> should throw error containing input type",
    function()
        assert.has.errors(function() eaw.environment.Find_All_Objects_Of_Type({}) end)

        assert.has.errors(function()
            eaw.environment.Find_All_Objects_Of_Type(eaw.types.game_object{name = "Dummy"})
        end)

        assert.has.errors(function()
            eaw.environment.Find_All_Objects_Of_Type(eaw.types.faction{name = "Dummy"})
        end)
    end
)

test(
    "When calling Find_All_Objects_Of_Type with type name -> should return table with game_object of requested type",
    function()
        local actual = eaw.environment.Find_All_Objects_Of_Type("My_Type")
        local expected = {name = "My_Type"}
        assert.is_true(type(actual) == "table")
        -- TODO: busted migration
        -- test.matches_game_object(expected, actual[1])
    end
)

test(
    "When calling Find_Nearest with game_object, faction and boolean -> should return game_object",
    function()
        local actual = eaw.environment.Find_Nearest(
            eaw.types.game_object{name = ""},
            eaw.types.faction{name = ""},
            true
        )
        -- TODO: busted migration
        -- test.is_game_object(actual)
    end
)

-- test("When calling Find_Nearest with unit_object, faction and boolean -> should return game_object", function()
--     local actual = eaw.environment.Find_Nearest(eaw.types.unit_object {name=""}, eaw.types.faction {name=""}, true)
--     TODO: busted migration
--     test.is_game_object(actual)
-- end)

-- test("When calling Find_Nearest with game_object, string, faction and boolean -> should return game_object", function()
--     local actual = eaw.environment.Find_Nearest(eaw.types.game_object {name=""}, "str", eaw.types.faction {name=""}, true)
--     TODO: busted migration
--     test.is_game_object(actual)
-- end)

-- test("When calling Find_Nearest with unit_object, string, faction and boolean -> should return game_object", function()
--     local actual = eaw.environment.Find_Nearest(eaw.types.unit_object {name=""}, "str", eaw.types.faction {name=""}, true)
--     TODO: busted migration
--     test.is_game_object(actual)
-- end)

-- test("When calling Find_Nearest with task_force, faction and boolean -> should return game_object", function()
--     local actual = eaw.environment.Find_Nearest(eaw.types.task_force {units={}}, eaw.types.faction {name=""}, true)
--     TODO: busted migration
--     test.is_game_object(actual)
-- end)

-- test("When calling Find_Nearest with task_force, string, faction and boolean -> should return game_object", function()
--     local actual = eaw.environment.Find_Nearest(eaw.types.task_force {units={}}, "str", eaw.types.faction {name=""}, true)
--     TODO: busted migration
--     test.is_game_object(actual)
-- end)

test(
    "When calling FindPlanet with string -> should return planet of requested type",
    function()
        local actual = eaw.environment.FindPlanet("Test")
        -- TODO: busted migration
        -- test.is_planet(actual)
        assert.are.equal("TEST", actual.Get_Type().Get_Name())
    end
)

test(
    "When calling FindPlanet.Get_All_Planets -> should return table with planet",
    function()
        local actual = eaw.environment.FindPlanet.Get_All_Planets()

        assert.is_true(type(actual) == "table")

        local entry = actual[1]
        -- TODO: busted migration
        -- test.is_planet(entry)
    end
)

test(
    "When calling Find_Player with string -> should return faction with requested name",
    function()
        local actual = eaw.environment.Find_Player("Test")
        -- TODO: busted migration
        -- test.is_faction(actual)
        assert.are.equal("TEST", actual.Get_Faction_Name())
    end
)
