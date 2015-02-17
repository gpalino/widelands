dirname = path.dirname(__file__)

tribes:new_ware_type{
   name = "snack",
   -- TRANSLATORS: This is a ware name used in lists of wares
   descname = _"Snack",
   -- TRANSLATORS: mass description, e.g. 'The economy needs ...'
   genericname = _"snacks",
   icon = dirname .. "menu.png",
   default_target_quantity = {
		barbarians = 15
	},
   preciousness = {
		barbarians = 5
	},
   helptext = {
		-- TRANSLATORS: Helptext for a ware: Snack
		barbarians = _"A bigger morsel than the ration to provide miners in deep mines. It is produced in an inn or a big inn out of fish/meat, pitta bread and beer."
   },
   animations = {
      idle = {
         pictures = { dirname .. "idle.png" },
         hotspot = { 7, 8 },
      },
   }
}
