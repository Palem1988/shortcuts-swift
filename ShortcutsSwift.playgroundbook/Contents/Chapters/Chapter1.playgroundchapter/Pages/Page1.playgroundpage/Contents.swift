var batteryLevel = Variable.actionOutput()
let shortcut = buildShortcut(
    comment("This Shortcut was generated in Swift.") +
    getBatteryLevel(&batteryLevel) +
    ifLessThan(20, ifTrue: (
        setLowPowerMode(true) +
        showResult("Your battery is at \(batteryLevel)%, you might want to charge it.")
    ), ifFalse: (
        showResult("Your battery is at \(batteryLevel)%, you're probably fine for now.")
    ))
)

shareShortcut(shortcut, named: "Warn for Low Battery Level")
