-- Hyprland 0.56.2 Lua configuration
-- Migrated from hyprland.conf + binds.conf.
-- hypremoji.conf was not included in the supplied archive, so it is not
-- migrated here. The original hyprland.conf remains backed up.

-- ======================
-- ENVIRONMENT
-- ======================

hl.env("XCURSOR_THEME", "breeze_cursors")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("WLR_DRM_NO_ATOMIC", "1")


-- ======================
-- AUTOSTART
-- ======================

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("mako")
    hl.exec_cmd("fusuma")
    hl.exec_cmd([[bash -c "sleep 1 && ~/.config/hypr/scripts/loadwall"]])
end)


-- ======================
-- MONITORS
-- ======================

hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@120",
    position = "0x0",
    scale = 1,
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "1920x0",
    scale = 1,
})


-- ======================
-- WINDOW RULES
-- ======================

hl.window_rule({
    name = "Kitty-workspace",
    match = { class = "^(kitty)$" },
    workspace = "1",
})

hl.window_rule({
    name = "Code-workspace",
    match = { class = "^(code)$" },
    workspace = "2",
})

hl.window_rule({
    name = "brave-workspace",
    match = { class = "^(brave-origin)$" },
    workspace = "3",
})


-- ======================
-- WORKSPACE RULES
-- ======================

for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "eDP-1",
    })
end

for i = 6, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "HDMI-A-1",
    })
end


-- ======================
-- GENERAL / DECORATION / INPUT
-- ======================

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 8,
        border_size = 2,
        ["col.active_border"] = {
            colors = { "rgba(7aa2f7ee)", "rgba(bb9af7ee)" },
            angle = 45,
        },
        ["col.inactive_border"] = "rgba(565f89aa)",
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        active_opacity = 0.90,
        inactive_opacity = 0.85,

        blur = {
            enabled = true,
            size = 10,
            passes = 4,
            vibrancy = 0.15,
        },

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },

    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = -0.1,

        touchpad = {
            natural_scroll = true,
        },
    },
})


-- ======================
-- PROGRAMS
-- ======================

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("wofi --show drun"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("~/.local/bin/dolphin-launch"))

-- Screenshots
hl.bind("PRINT",
    hl.dsp.exec_cmd([[grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png]]))

hl.bind("SHIFT + PRINT",
    hl.dsp.exec_cmd([[grim ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png]]))

hl.bind("CTRL + PRINT",
    hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy]]))

-- Window controls
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close())
hl.bind("SUPER + C", hl.dsp.exec_cmd("code"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("brave-origin"))
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pseudo({ action = "toggle" }))
hl.bind("SUPER + M", hl.dsp.exit())

-- Focus
hl.bind("SUPER + LEFT", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + RIGHT", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + UP", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + DOWN", hl.dsp.focus({ direction = "d" }))

-- Mouse
hl.bind("SUPER + ALT + mouse:272", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- ======================
-- WORKSPACE KEYBINDS
-- ======================

for i = 1, 9 do
    hl.bind("SUPER + " .. tostring(i),
        hl.dsp.focus({ workspace = tostring(i) }))

    hl.bind("SUPER + SHIFT + " .. tostring(i),
        hl.dsp.window.move({ workspace = tostring(i) }))
end

hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))


-- ======================
-- FUNCTION KEYS
-- ======================

hl.bind("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { repeating = true, locked = true })

hl.bind("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { repeating = true, locked = true })

hl.bind("XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true })

hl.bind("XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
    { repeating = true, locked = true })

hl.bind("XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
    { repeating = true, locked = true })
