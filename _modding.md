# Modding guide

Feel free to use to the additional Saurian units for your own add-ons!
However, instead of copying the sprites and configuration files,
consider including this add-on as a dependency. This has the following
advantages:

- Any graphical or balancing updates will be applied to your add-on.
- The users that already have this add-on will not have to download
  duplicated sprites, decreasing the download size of your add-on.
- Newly added unit translations will be available for your add-on.

## Cookbook

### Including the add-on as a dependency

> [Documentation](https://wiki.wesnoth.org/PBLWML#dependencies)

Add the following property to your `_server.pbl` file:

```
dependencies=Saurian_Pack
```

To include the modification as a whole in your add-on, place the
`[load_resource]` tag in your `[era]` or `[campaign]` tag. For example:

```ini
[era]
    [load_resource]
        id=wesnoth-Saurian_Pack-resource
    [/load_resource]
    # (...)
[/era]
```

This will include all additional Saurian advancements in your add-on.

### Including individual unit advancements

> [Documentation](https://wiki.wesnoth.org/ModificationWML#The_.5Bresource.5D_toplevel_tag)

If you do not want to include all units, this add-on also offers
individual resources for each available upgrade. The complete list
of resources can be found in `_main.cfg`. For example, to include
only the Saurian Seer and Saurian Prophet upgrades, use the following
`[load_resource]` tags:

```ini
    [load_resource]
        id=wesnoth-Saurian_Pack-resource-Seer
    [/load_resource]
    [load_resource]
        id=wesnoth-Saurian_Pack-resource-Prophet
    [/load_resource]
```

### Referencing units from the add-on

You reference the units by their IDs in your eras and campaigns.
Unit IDs are all equal to the full unit names in English, and can be
found in the `.cfg` files in the `units/saurians/` directory.

For example, this defines the Saurian Spearwoman as a possible leader
of a custom faction:

```
leader=Saurian Spearwoman,Saurian Oracle,Saurian Soothsayer
```

### Customizing add-on

To make both the sprites and unit configuration files available in your
add-on, add the following tags to your `_main.cfg` file:

```ini
[binary_path]
    path=data/add-ons/Saurian_Pack
[/binary_path]
[+units]
    {~add-ons/Saurian_Pack/units/saurians}
[/units]
```

Including these tags allows adding advancements manually, redefining unit
definitions, and so on. The following sections assume that `[binary_path]`
and `[+units]` are properly defined.

#### Adding unit advancements manually

> [Documentation](https://wiki.wesnoth.org/ModificationWML)

If you want include the additional advancements, but change the experience
values, copy the `[modify_unit_type]` tags from `_main.cfg` file and put them
in your `[era]` or `[campaign]` tags. For example:

```ini
[era]
    [modify_unit_type]
        type=Saurian Soothsayer
        set_advances_to=Saurian Seer
        set_experience=100
    [/modify_unit_type]
    # (...)
[/era]
```

#### Using the add-on's sprites for custom units

If you do would like to use the graphics of the additional Saurians, but
want to define custom statistics for the new units, skip the `[+units]`
tag during dependency setup (see the first section), and instead copy the
unit configuration files from `units/saurians/` to your add-on and apply
the changes.

Note that in order for the sprites to be correctly picked up by the game
client, `[binary_path]` has to be defined in your `.cfg` file:

```ini
[binary_path]
    path=data/add-ons/Saurian_Pack
[/binary_path]
```

Make sure to modify the `id` property to avoid clashes with the units
from this add-on. For example:

```ini
[unit_type]
    id=Custom-Saurian-Seer
```

#### Reusing add-on's translations

> [Documentation](https://wiki.wesnoth.org/GettextForWesnothDevelopers#Reusing_mainline_translations)

Place the following comment before a translated text:

```
#textdomain wesnoth-Saurian_Pack
```

For example:

```
[unit_type]
    id=My Saurian Seer
    #textdomain wesnoth-Saurian_Pack
    name= _ "Saurian Seer"
```

#### Troubleshooting

> _Additional units do not have any images._

Make sure you have included the `[binary_path]` property in your `.cfg` file.
See the first section of this document.

> _Additional units are not available in my add-on._

Make sure you have included the unit configuration files with `[+units]`,
and explicitly set the advancements of the official Saurians with
`[modify_unit_type]` tags. See the first two sections of this document.
