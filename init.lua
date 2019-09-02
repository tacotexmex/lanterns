lanterns = {}

lanterns.path = minetest.get_modpath("lanterns")

--nodes
minetest.register_node('lanterns:paper_lantern', {
	description = 'Paper Lantern',
	tiles = {'lanterns_paper_lantern.png'},
	groups = {choppy=1,oddly_breakable_by_hand=2},
	paramtype = 'light',
	light_source = 13,
})

minetest.register_node('lanterns:paper_lantern_small', {
	description = 'Paper Lantern Small',
	tiles = {'[combine:16x16:4,4=lanterns_paper_lantern_small.png',
			 '[combine:16x16:4,4=lanterns_paper_lantern_small.png',
			 '[combine:16x16:4,8=lanterns_paper_lantern_small.png'},
	groups = {choppy=1,oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	light_source = 12,
	drawtype = 'nodebox',
	node_box= { type = 'fixed', fixed = { -0.25, -0.5, -0.25, 0.25, 0, 0.25 } },
	on_place = minetest.rotate_node,
})

-- crafts
minetest.register_craft({
	output = 'lanterns:paper_lantern',
	recipe = {
		{'', 'group:stick', ''},
		{'default:paper', 'default:torch', 'default:paper'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'lanterns:paper_lantern',
	type = 'shapeless',
	recipe = {
		'lanterns:paper_lantern_small', 'lanterns:paper_lantern_small',
		'lanterns:paper_lantern_small', 'lanterns:paper_lantern_small',
		'lanterns:paper_lantern_small', 'lanterns:paper_lantern_small',
		'lanterns:paper_lantern_small', 'lanterns:paper_lantern_small',
	},
})

minetest.register_craft({
	output = 'lanterns:paper_lantern_small 8',
	type = 'shapeless',
	recipe = {'lanterns:paper_lantern'},
})
