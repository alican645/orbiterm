import AppKit

/// Settings › Chats › "chat windows on their own": off (the default), a chat window rides on the dashboard as its
/// child, always above it and hidden with it. On, it is an ordinary window of its own: the dashboard can come in front
/// of it (the Dock icon, ⌘-Tab, a click), and Split View or Mission Control place it like any other window.
enum ChatWindows {
    private static let freeKey = "chatWindowsFree"

    static var free: Bool {
        get { UserDefaults.standard.bool(forKey: freeKey) }
        set { UserDefaults.standard.set(newValue, forKey: freeKey) }
    }

    /// An ordinary window's behaviour: managed, in ⌘-` and the Window menu, and able to go full screen or into Split View.
    static let freeBehavior: NSWindow.CollectionBehavior = [.managed, .participatesInCycle, .fullScreenPrimary]
}
