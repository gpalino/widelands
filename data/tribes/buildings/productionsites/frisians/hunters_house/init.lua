push_textdomain("tribes")

local dirname = path.dirname (__file__)

wl.Descriptions():new_productionsite_type {
   name = "frisians_hunters_house",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext ("frisians_building", "Hunter’s House"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   size = "small",

   buildcost = {
      brick = 1,
      log = 1,
      reed = 1
   },
   return_on_dismantle = {
      brick = 1,
      log = 1
   },

   spritesheets = {
      idle = {
         hotspot = {40, 69},
         frames = 10,
         columns = 5,
         rows = 2,
         fps = 10
      }
   },
   animations = {
      unoccupied = {
         hotspot = {40, 52}
      }
   },

   aihints = {
      prohibited_till = 480
   },

   working_positions = {
      frisians_hunter = 1
   },

   programs = {
      main = {
         -- TRANSLATORS: Completed/Skipped/Did not start hunting because ...
         descname = _("hunting"),
         actions = {
            -- time of worker: 8.2-62.2 sec
            -- min. time: 8.2 + 35 = 43.2 sec
            -- max. time: 62.2 + 35 = 97.2 sec
            "callworker=hunt",
            "sleep=duration:35s",
            "callworker=hunt",
            "sleep=duration:35s",
            "callworker=hunt",
            "sleep=duration:35s",
            "callworker=hunt",
            "sleep=duration:35s",
            "callworker=hunt",
            "sleep=duration:35s",
            "produce=fur"
         }
      },
   },
   out_of_resource_notification = {
      -- Translators: Short for "Out of Game" for a resource
      title = _("No Game"),
      -- TRANSLATORS: "Game" means animals that you can hunt
      heading = _("Out of Game"),
      -- TRANSLATORS: "game" means animals that you can hunt
      message = pgettext("frisians_building", "The hunter working out of this hunter’s house can’t find any game in his work area."),
      productivity_threshold = 33
   },
}

pop_textdomain()
