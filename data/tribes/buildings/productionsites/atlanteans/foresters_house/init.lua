push_textdomain("tribes")

local dirname = path.dirname(__file__)

wl.Descriptions():new_productionsite_type {
   name = "atlanteans_foresters_house",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext("atlanteans_building", "Forester’s House"),
   icon = dirname .. "menu.png",
   size = "small",

   buildcost = {
      log = 1,
      planks = 1,
      granite = 1
   },
   return_on_dismantle = {
      granite = 1,
      log = 1
   },

   animation_directory = dirname,
   animations = {
      idle = {
         hotspot = { 39, 47 },
      }
   },

   aihints = {
      space_consumer = true,
      very_weak_ai_limit = 2,
      weak_ai_limit = 4
   },

   working_positions = {
      atlanteans_forester = 1
   },

   programs = {
      main = {
         -- TRANSLATORS: Completed/Skipped/Did not start planting trees because ...
         descname = _("planting trees"),
         actions = {
            -- time of worker: 15.2-36.8 sec
            -- min. time total: 15.2 + 8 = 23.2 sec
            -- max. time total: 36.8 + 8 = 44.8 sec
            "callworker=plant",
            "sleep=duration:8s"
         }
      },
   },
}

pop_textdomain()
