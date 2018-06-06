@ConfigGroup(
    keyName = AntiDragPlugin.CONFIG_GROUP,
    name = "Anti Drag",
    description = "Configuration for the anti drag plugin"
)
public interface AntiDragConfig extends Config
{
    @ConfigItem(
        keyName = "dragDelay",
        name = "Drag Delay",
        description = "Configures the inventory drag delay in client ticks (20ms)",
        position = 1
    )
    default int dragDelay()
    {
        return 600 / 20; // one game tick
    }

    @ConfigItem(
        keyName = "dragDelay",
        name = "",
        description = ""
    )
    void dragDelay(int delay);

    @ConfigItem(
        keyName = "onShiftOnly",
        name = "On Shift Only",
        description = "Configures whether to only adjust the delay while holding shift",
        position = 2
    )
    default boolean onShiftOnly()
    {
        return true;
    }
}
© 2018 GitHub, Inc.
