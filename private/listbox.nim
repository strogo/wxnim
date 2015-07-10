


type 
  WxArrayInt* {.importcpp: "wxArrayInt", header: "<wx/wx.h>".} = object 
  
  WxControlWithItems* {.importcpp: "wxControlWithItems", header: "<wx/wx.h>".} = object of WxControl
  
  WxOwnerDrawn* {.importcpp: "wxOwnerDrawn", header: "<wx/wx.h>".} = object 
  


type 
  WxListBoxBase* {.importcpp: "wxListBoxBase", header: "<wx/wx.h>".} = object of WxControlWithItems
  

proc constructwxListBoxBase*(): WxListBoxBase {.cdecl, constructor, 
    importcpp: "wxListBoxBase(@)", header: "<wx/wx.h>".}
proc destroywxListBoxBase*(this: var WxListBoxBase) {.cdecl, 
    importcpp: "#.~wxListBoxBase()", header: "<wx/wx.h>".}
proc insertItems*(this: var WxListBoxBase; nItems: cuint; items: ptr WxString; 
                  pos: cuint) {.cdecl, importcpp: "InsertItems", 
                                header: "<wx/wx.h>".}
proc insertItems*(this: var WxListBoxBase; items: WxArrayString; pos: cuint) {.
    cdecl, importcpp: "InsertItems", header: "<wx/wx.h>".}
proc isSelected*(this: WxListBoxBase; n: cint): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: "<wx/wx.h>".}
proc setSelection*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
proc setSelection*(this: var WxListBoxBase; n: cint; select: bool) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
proc deselect*(this: var WxListBoxBase; n: cint) {.cdecl, importcpp: "Deselect", 
    header: "<wx/wx.h>".}
proc deselectAll*(this: var WxListBoxBase; itemToLeaveSelected: cint = - 1) {.
    cdecl, importcpp: "DeselectAll", header: "<wx/wx.h>".}
proc setStringSelection*(this: var WxListBoxBase; s: WxString; select: bool): bool {.
    cdecl, importcpp: "SetStringSelection", header: "<wx/wx.h>".}
proc setStringSelection*(this: var WxListBoxBase; s: WxString): bool {.cdecl, 
    importcpp: "SetStringSelection", header: "<wx/wx.h>".}
proc getSelections*(this: WxListBoxBase; aSelections: var WxArrayInt): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: "<wx/wx.h>".}
proc setFirstItem*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "SetFirstItem", header: "<wx/wx.h>".}
proc setFirstItem*(this: var WxListBoxBase; s: WxString) {.cdecl, 
    importcpp: "SetFirstItem", header: "<wx/wx.h>".}
proc ensureVisible*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "EnsureVisible", header: "<wx/wx.h>".}
proc appendAndEnsureVisible*(this: var WxListBoxBase; s: WxString) {.cdecl, 
    importcpp: "AppendAndEnsureVisible", header: "<wx/wx.h>".}
proc hasMultipleSelection*(this: WxListBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasMultipleSelection", header: "<wx/wx.h>".}
proc isSorted*(this: WxListBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSorted", header: "<wx/wx.h>".}
proc command*(this: var WxListBoxBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc hitTest*(this: WxListBoxBase; point: WxPoint): cint {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: "<wx/wx.h>".}
proc hitTest*(this: WxListBoxBase; x: cint; y: cint): cint {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
type 
  WxListBox* {.importcpp: "wxListBox", header: "<wx/wx.h>".} = object of WxListBoxBase
  

proc constructwxListBox*(): WxListBox {.cdecl, constructor, 
                                        importcpp: "wxListBox(@)", 
                                        header: "<wx/wx.h>".}
proc constructwxListBox*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; n: cint = 0; 
                         choices: ptr WxString = nil; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("listbox")): WxListBox {.
    cdecl, constructor, importcpp: "wxListBox(@)", header: "<wx/wx.h>".}
proc constructwxListBox*(parent: ptr WxWindow; id: WxWindowID; pos: WxPoint; 
                         size: WxSize; choices: WxArrayString; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("listbox")): WxListBox {.
    cdecl, constructor, importcpp: "wxListBox(@)", header: "<wx/wx.h>".}
proc create*(this: var WxListBox; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             n: cint = 0; choices: ptr WxString = nil; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listbox")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxListBox; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint; size: WxSize; choices: WxArrayString; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listbox")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc destroywxListBox*(this: var WxListBox) {.cdecl, 
    importcpp: "#.~wxListBox()", header: "<wx/wx.h>".}
proc getCount*(this: WxListBox): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc getString*(this: WxListBox; n: cuint): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: "<wx/wx.h>".}
proc setString*(this: var WxListBox; n: cuint; s: WxString) {.cdecl, 
    importcpp: "SetString", header: "<wx/wx.h>".}
proc findString*(this: WxListBox; s: WxString; bCase: bool = false): cint {.
    noSideEffect, cdecl, importcpp: "FindString", header: "<wx/wx.h>".}
proc isSelected*(this: WxListBox; n: cint): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: "<wx/wx.h>".}
proc getSelection*(this: WxListBox): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getSelections*(this: WxListBox; aSelections: var WxArrayInt): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: "<wx/wx.h>".}
proc hitTest*(this: WxListBox; pt: WxPoint): cint {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: "<wx/wx.h>".}
proc hitTest*(this: WxListBox; x: WxCoord; y: WxCoord): cint {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc setFont*(this: var WxListBox; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc createLboxItem*(this: var WxListBox; n: csize): ptr WxOwnerDrawn {.cdecl, 
    importcpp: "CreateLboxItem", header: "<wx/wx.h>".}
proc getItem*(this: WxListBox; n: csize): ptr WxOwnerDrawn {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: "<wx/wx.h>".}
proc getItemIndex*(this: WxListBox; item: ptr WxOwnerDrawn): cint {.
    noSideEffect, cdecl, importcpp: "GetItemIndex", header: "<wx/wx.h>".}
proc getItemRect*(this: WxListBox; n: csize; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetItemRect", header: "<wx/wx.h>".}
proc refreshItem*(this: var WxListBox; n: csize): bool {.cdecl, 
    importcpp: "RefreshItem", header: "<wx/wx.h>".}
proc setHorizontalExtent*(this: var WxListBox; s: WxString = wxEmptyString) {.
    cdecl, importcpp: "SetHorizontalExtent", header: "<wx/wx.h>".}
proc getDefaultAttributes*(this: WxListBox): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: "<wx/wx.h>".}
proc canApplyThemeBorder*(this: WxListBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "<wx/wx.h>".}
proc onInternalIdle*(this: var WxListBox) {.cdecl, importcpp: "OnInternalIdle", 
    header: "<wx/wx.h>".}
