


discard "forward decl of wxObjectListNode"
type 
  WxNode* {.importcpp: "wxNode", header: "wx.h".} = object 
  
  WxListSortFunction* {.importcpp: "wxList_SortFunction", header: "wx.h".}[T] = object 
    mF* {.importc: "m_f".}: WxSortCompareFunction


proc constructwxListSortFunction*[T](f: WxSortCompareFunction): WxListSortFunction[
    T] {.cdecl, constructor, importcpp: "wxList_SortFunction(@)", header: "wx.h".}
proc `()`*[T](this: var WxListSortFunction[T]; i1: T; i2: T): bool {.cdecl, 
    importcpp: "#(@)", header: "wx.h".}





type 
  WxObjectList* {.importcpp: "wxObjectList", header: "wx.h", inheritable.} = object 
  

proc constructwxObjectList*(): WxObjectList {.cdecl, constructor, 
    importcpp: "wxObjectList(@)", header: "wx.h".}
proc isEmpty*(this: WxObjectList): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "wx.h".}
proc getCount*(this: WxObjectList): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "wx.h".}
proc number*(this: WxObjectList): cint {.noSideEffect, cdecl, 
    importcpp: "Number", header: "wx.h".}
proc `[]`*(this: WxObjectList; idx: csize): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: "wx.h".}
proc member*(this: WxObjectList; e: ptr WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "Member", header: "wx.h".}
proc indexOf*(this: WxObjectList; e: ptr WxObject): cint {.noSideEffect, cdecl, 
    importcpp: "IndexOf", header: "wx.h".}
proc deleteContents*(this: var WxObjectList; destroy: bool) {.cdecl, 
    importcpp: "DeleteContents", header: "wx.h".}
proc getDeleteContents*(this: WxObjectList): bool {.noSideEffect, cdecl, 
    importcpp: "GetDeleteContents", header: "wx.h".}
proc deleteObject*(this: var WxObjectList; e: ptr WxObject): bool {.cdecl, 
    importcpp: "DeleteObject", header: "wx.h".}
proc clear*(this: var WxObjectList) {.cdecl, importcpp: "Clear", header: "wx.h".}
proc sort*(this: var WxObjectList; compfunc: WxSortCompareFunction) {.cdecl, 
    importcpp: "Sort", header: "wx.h".}
proc destroywxObjectList*(this: var WxObjectList) {.cdecl, 
    importcpp: "#.~wxObjectList()", header: "wx.h".}
type 
  WxList* {.importcpp: "wxList", header: "wx.h".} = object of WxObjectList
  

proc constructwxList*(keyType: auto = wxKEY_NONE): WxList {.cdecl, constructor, 
    importcpp: "wxList(@)", header: "wx.h".}
proc destroywxList*(this: var WxList) {.cdecl, importcpp: "#.~wxList()", 
                                        header: "wx.h".}