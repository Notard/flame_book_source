bool Win32Window::Create(const std::wstring& title,
const Point& origin,
const Size& size) {
    Destroy();
    const wchar_t* window_class =
    WindowClassRegistrar::GetInstance()->GetWindowClass();
    const POINT target_point = {static_cast<LONG>(origin.x),
    static_cast<LONG>(origin.y)};
    HMONITOR monitor = MonitorFromPoint(target_point, MONITOR_DEFAULTTONEAREST);
    UINT dpi = FlutterDesktopGetDpiForMonitor(monitor);
    double scale_factor = dpi / 96.0;
    HWND window = CreateWindow(
    window_class, title.c_str(), WS_OVERLAPPEDWINDOW,
    Scale(origin.x, scale_factor), Scale(origin.y, scale_factor),
    Scale(size.width, scale_factor), Scale(size.height, scale_factor),
    nullptr, nullptr, GetModuleHandle(nullptr), this);
    if (!window) {
        return false;
    }
    UpdateTheme(window);
    return OnCreate();
}