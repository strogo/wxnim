


type 
  WxRange* {.importcpp: "wxRange", header: "<wx/wx.h>".} = object 
  

proc constructwxRange*(): WxRange {.cdecl, constructor, importcpp: "wxRange(@)", 
                                    header: "<wx/wx.h>".}
proc constructwxRange*(minVal: cint; maxVal: cint): WxRange {.cdecl, 
    constructor, importcpp: "wxRange(@)", header: "<wx/wx.h>".}
proc getMin*(this: WxRange): cint {.noSideEffect, cdecl, importcpp: "GetMin", 
                                    header: "<wx/wx.h>".}
proc getMax*(this: WxRange): cint {.noSideEffect, cdecl, importcpp: "GetMax", 
                                    header: "<wx/wx.h>".}
const 
  wxSPIN_BUTTON_NAME* = "wxSpinButton"


type 
  WxSpinButtonBase* {.importcpp: "wxSpinButtonBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxSpinButtonBase*(): WxSpinButtonBase {.cdecl, constructor, 
    importcpp: "wxSpinButtonBase(@)", header: "<wx/wx.h>".}
proc getValue*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc getMin*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMin", header: "<wx/wx.h>".}
proc getMax*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMax", header: "<wx/wx.h>".}
proc getRange*(this: WxSpinButtonBase): WxRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc setValue*(this: var WxSpinButtonBase; val: cint) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc setMin*(this: var WxSpinButtonBase; minVal: cint) {.cdecl, 
    importcpp: "SetMin", header: "<wx/wx.h>".}
proc setMax*(this: var WxSpinButtonBase; maxVal: cint) {.cdecl, 
    importcpp: "SetMax", header: "<wx/wx.h>".}
proc setRange*(this: var WxSpinButtonBase; minVal: cint; maxVal: cint) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc setRange*(this: var WxSpinButtonBase; range: WxRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc isVertical*(this: WxSpinButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: "<wx/wx.h>".}

type 
  WxSpinEvent* {.importcpp: "wxSpinEvent", header: "<wx/wx.h>".} = object of WxNotifyEvent
  

proc constructwxSpinEvent*(commandType: WxEventType = wxEVT_NULL; 
                           winid: cint = 0): WxSpinEvent {.cdecl, constructor, 
    importcpp: "wxSpinEvent(@)", header: "<wx/wx.h>".}
proc constructwxSpinEvent*(event: WxSpinEvent): WxSpinEvent {.cdecl, 
    constructor, importcpp: "wxSpinEvent(@)", header: "<wx/wx.h>".}
proc getValue*(this: WxSpinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc setValue*(this: var WxSpinEvent; value: cint) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getPosition*(this: WxSpinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxSpinEvent; pos: cint) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc clone*(this: WxSpinEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
template wxSpinEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxSpinEventFunction, `func`)


template evt_Spin_Up*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN_UP, winid, wxSpinEventHandler(`func`))

template evt_Spin_Down*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN_DOWN, winid, wxSpinEventHandler(`func`))

template evt_Spin*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN, winid, wxSpinEventHandler(`func`))

