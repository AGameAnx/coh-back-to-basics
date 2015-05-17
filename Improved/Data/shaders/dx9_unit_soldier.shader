variable_list =
{
	{
		name = "dirtVisibility",
		type = Float,
		mode = Animated
	},
	{
		name = "diffuseTex",
		type = Texture,
		mode = Static
	},
	{
		name = "dirtTex",
		type = Texture,
		mode = Static
	},
	{
		name = "normalMap",
		type = Texture,
		mode = Static
	},
	{
		name = "occlusionTex",
		type = Texture,
		mode = Static
	},
	{
		name = "glossTex",
		type = Texture,
		mode = Static
	},
	{
		name = "specularTex",
		type = Texture,
		mode = Static
	},
};

script_list =
{
	{
		database = "d3d9",
		script = "\\d3d9\\dx9_unit_dirt_norm_oclu_spec_1bit.fx",
	},
};

component_list =
{
	Position, Normal, Tangent, Binormal, UV0, UV1
};

low_component_list =
{
	Position, Normal, UV0
};
