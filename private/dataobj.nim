



type 
  NativeFormat* = cushort
  WxDataFormat* {.importcpp: "wxDataFormat", header: "<wx/wx.h>".} = object 
  

proc constructwxDataFormat*(format: NativeFormat = NativeFormat(wxDF_INVALID)): WxDataFormat {.
    cdecl, constructor, importcpp: "wxDataFormat(@)", header: "<wx/wx.h>".}
proc constructwxDataFormat*(format: WxString): WxDataFormat {.cdecl, 
    constructor, importcpp: "wxDataFormat(@)", header: "<wx/wx.h>".}
proc constructwxDataFormat*(format: cstring): WxDataFormat {.cdecl, constructor, 
    importcpp: "wxDataFormat(@)", header: "<wx/wx.h>".}
proc constructwxDataFormat*(format: WxCStrData): WxDataFormat {.cdecl, 
    constructor, importcpp: "wxDataFormat(@)", header: "<wx/wx.h>".}
proc `==`*(this: WxDataFormat; format: WxDataFormatId): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxDataFormat; format: WxDataFormat): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc getFormatId*(this: WxDataFormat): NativeFormat {.noSideEffect, cdecl, 
    importcpp: "GetFormatId", header: "<wx/wx.h>".}
proc setType*(this: var WxDataFormat; format: NativeFormat) {.cdecl, 
    importcpp: "SetType", header: "<wx/wx.h>".}
proc getType*(this: WxDataFormat): NativeFormat {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "<wx/wx.h>".}
proc getId*(this: WxDataFormat): WxString {.noSideEffect, cdecl, 
    importcpp: "GetId", header: "<wx/wx.h>".}
proc setId*(this: var WxDataFormat; format: WxString) {.cdecl, 
    importcpp: "SetId", header: "<wx/wx.h>".}
proc isStandard*(this: WxDataFormat): bool {.noSideEffect, cdecl, 
    importcpp: "IsStandard", header: "<wx/wx.h>".}

var wxFormatInvalid* {.importcpp: "wxFormatInvalid", header: "<wx/wx.h>".}: WxDataFormat


type 
  WxDataObjectBase* {.importcpp: "wxDataObjectBase", header: "<wx/wx.h>", 
                      inheritable.} = object 
  
  Direction* {.size: sizeof(cint), pure, 
               importcpp: "wxDataObjectBase::Direction", header: "<wx/wx.h>".} = enum 
    Get = 0x00000001, Set = 0x00000002, Both = 0x00000003


proc destroywxDataObjectBase*(this: var WxDataObjectBase) {.cdecl, 
    importcpp: "#.~wxDataObjectBase()", header: "<wx/wx.h>".}
proc getPreferredFormat*(this: WxDataObjectBase; dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: "<wx/wx.h>".}
proc getFormatCount*(this: WxDataObjectBase; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: "<wx/wx.h>".}
proc getAllFormats*(this: WxDataObjectBase; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: "<wx/wx.h>".}
proc getDataSize*(this: WxDataObjectBase; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxDataObjectBase; format: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxDataObjectBase; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.cdecl, importcpp: "SetData", 
                                    header: "<wx/wx.h>".}
proc isSupported*(this: WxDataObjectBase; format: WxDataFormat; 
                  dir: Direction = Direction.Get): bool {.noSideEffect, cdecl, 
    importcpp: "IsSupported", header: "<wx/wx.h>".}

type 
  WxDataObject* {.importcpp: "wxDataObject", header: "<wx/wx.h>".} = object of WxDataObjectBase
  

proc constructwxDataObject*(): WxDataObject {.cdecl, constructor, 
    importcpp: "wxDataObject(@)", header: "<wx/wx.h>".}
proc destroywxDataObject*(this: var WxDataObject) {.cdecl, 
    importcpp: "#.~wxDataObject()", header: "<wx/wx.h>".}
proc setAutoDelete*(this: var WxDataObject) {.cdecl, importcpp: "SetAutoDelete", 
    header: "<wx/wx.h>".}
proc isSupportedFormat*(this: WxDataObject; format: WxDataFormat): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedFormat", header: "<wx/wx.h>".}
proc needsVerbatimData*(this: WxDataObject; format: WxDataFormat): bool {.
    noSideEffect, cdecl, importcpp: "NeedsVerbatimData", header: "<wx/wx.h>".}
proc getSizeFromBuffer*(this: var WxDataObject; buffer: pointer; 
                        size: ptr csize; format: WxDataFormat): pointer {.cdecl, 
    importcpp: "GetSizeFromBuffer", header: "<wx/wx.h>".}
proc setSizeInBuffer*(this: var WxDataObject; buffer: pointer; size: csize; 
                      format: WxDataFormat): pointer {.cdecl, 
    importcpp: "SetSizeInBuffer", header: "<wx/wx.h>".}
proc getBufferOffset*(this: var WxDataObject; format: WxDataFormat): csize {.
    cdecl, importcpp: "GetBufferOffset", header: "<wx/wx.h>".}

type 
  WxDataObjectSimple* {.importcpp: "wxDataObjectSimple", header: "<wx/wx.h>".} = object of WxDataObject
  

proc constructwxDataObjectSimple*(format: WxDataFormat = wxFormatInvalid): WxDataObjectSimple {.
    cdecl, constructor, importcpp: "wxDataObjectSimple(@)", header: "<wx/wx.h>".}
proc getFormat*(this: WxDataObjectSimple): WxDataFormat {.noSideEffect, cdecl, 
    importcpp: "GetFormat", header: "<wx/wx.h>".}
proc setFormat*(this: var WxDataObjectSimple; format: WxDataFormat) {.cdecl, 
    importcpp: "SetFormat", header: "<wx/wx.h>".}
proc getDataSize*(this: WxDataObjectSimple): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxDataObjectSimple; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxDataObjectSimple; len: csize; buf: pointer): bool {.
    cdecl, importcpp: "SetData", header: "<wx/wx.h>".}
proc getPreferredFormat*(this: WxDataObjectSimple; 
                         dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: "<wx/wx.h>".}
proc getFormatCount*(this: WxDataObjectSimple; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: "<wx/wx.h>".}
proc getAllFormats*(this: WxDataObjectSimple; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: "<wx/wx.h>".}
proc getDataSize*(this: WxDataObjectSimple; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxDataObjectSimple; format: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxDataObjectSimple; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.cdecl, importcpp: "SetData", 
                                    header: "<wx/wx.h>".}

type 
  WxDataObjectComposite* {.importcpp: "wxDataObjectComposite", 
                           header: "<wx/wx.h>".} = object of WxDataObject
  

proc constructwxDataObjectComposite*(): WxDataObjectComposite {.cdecl, 
    constructor, importcpp: "wxDataObjectComposite(@)", header: "<wx/wx.h>".}
proc destroywxDataObjectComposite*(this: var WxDataObjectComposite) {.cdecl, 
    importcpp: "#.~wxDataObjectComposite()", header: "<wx/wx.h>".}
proc add*(this: var WxDataObjectComposite; dataObject: ptr WxDataObjectSimple; 
          preferred: bool = false) {.cdecl, importcpp: "Add", 
                                     header: "<wx/wx.h>".}
proc getReceivedFormat*(this: WxDataObjectComposite): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetReceivedFormat", header: "<wx/wx.h>".}
proc getObject*(this: WxDataObjectComposite; format: WxDataFormat; 
                dir: Direction = Direction.Get): ptr WxDataObjectSimple {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "<wx/wx.h>".}
proc getPreferredFormat*(this: WxDataObjectComposite; 
                         dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: "<wx/wx.h>".}
proc getFormatCount*(this: WxDataObjectComposite; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: "<wx/wx.h>".}
proc getAllFormats*(this: WxDataObjectComposite; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: "<wx/wx.h>".}
proc getDataSize*(this: WxDataObjectComposite; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxDataObjectComposite; format: WxDataFormat; 
                  buf: pointer): bool {.noSideEffect, cdecl, 
                                        importcpp: "GetDataHere", 
                                        header: "<wx/wx.h>".}
proc setData*(this: var WxDataObjectComposite; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.cdecl, importcpp: "SetData", 
                                    header: "<wx/wx.h>".}

type 
  WxHTMLDataObject* {.importcpp: "wxHTMLDataObject", header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxHTMLDataObject*(html: WxString = wxEmptyString): WxHTMLDataObject {.
    cdecl, constructor, importcpp: "wxHTMLDataObject(@)", header: "<wx/wx.h>".}
proc getLength*(this: WxHTMLDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetLength", header: "<wx/wx.h>".}
proc getHTML*(this: WxHTMLDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHTML", header: "<wx/wx.h>".}
proc setHTML*(this: var WxHTMLDataObject; html: WxString) {.cdecl, 
    importcpp: "SetHTML", header: "<wx/wx.h>".}
proc getDataSize*(this: WxHTMLDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxHTMLDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxHTMLDataObject; len: csize; buf: pointer): bool {.
    cdecl, importcpp: "SetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxHTMLDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxHTMLDataObject; a3: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxHTMLDataObject; a3: WxDataFormat; len: csize; 
              buf: pointer): bool {.cdecl, importcpp: "SetData", 
                                    header: "<wx/wx.h>".}
type 
  WxTextDataObject* {.importcpp: "wxTextDataObject", header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxTextDataObject*(text: WxString = wxEmptyString): WxTextDataObject {.
    cdecl, constructor, importcpp: "wxTextDataObject(@)", header: "<wx/wx.h>".}
proc getTextLength*(this: WxTextDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetTextLength", header: "<wx/wx.h>".}
proc getText*(this: WxTextDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "<wx/wx.h>".}
proc setText*(this: var WxTextDataObject; text: WxString) {.cdecl, 
    importcpp: "SetText", header: "<wx/wx.h>".}
proc getFormatCount*(this: WxTextDataObject; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: "<wx/wx.h>".}
proc getAllFormats*(this: WxTextDataObject; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: "<wx/wx.h>".}
proc getDataSize*(this: WxTextDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxTextDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxTextDataObject; len: csize; buf: pointer): bool {.
    cdecl, importcpp: "SetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxTextDataObject; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxTextDataObject; format: WxDataFormat; pBuf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxTextDataObject; format: WxDataFormat; nLen: csize; 
              pBuf: pointer): bool {.cdecl, importcpp: "SetData", 
                                     header: "<wx/wx.h>".}

type 
  WxBitmapDataObjectBase* {.importcpp: "wxBitmapDataObjectBase", 
                            header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxBitmapDataObjectBase*(bitmap: WxBitmap = wxNullBitmap): WxBitmapDataObjectBase {.
    cdecl, constructor, importcpp: "wxBitmapDataObjectBase(@)", 
    header: "<wx/wx.h>".}
proc getBitmap*(this: WxBitmapDataObjectBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "<wx/wx.h>".}
proc setBitmap*(this: var WxBitmapDataObjectBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: "<wx/wx.h>".}

type 
  WxFileDataObjectBase* {.importcpp: "wxFileDataObjectBase", header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxFileDataObjectBase*(): WxFileDataObjectBase {.cdecl, 
    constructor, importcpp: "wxFileDataObjectBase(@)", header: "<wx/wx.h>".}
proc getFilenames*(this: WxFileDataObjectBase): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetFilenames", header: "<wx/wx.h>".}

type 
  WxCustomDataObject* {.importcpp: "wxCustomDataObject", header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxCustomDataObject*(format: WxDataFormat = wxFormatInvalid): WxCustomDataObject {.
    cdecl, constructor, importcpp: "wxCustomDataObject(@)", header: "<wx/wx.h>".}
proc destroywxCustomDataObject*(this: var WxCustomDataObject) {.cdecl, 
    importcpp: "#.~wxCustomDataObject()", header: "<wx/wx.h>".}
proc takeData*(this: var WxCustomDataObject; size: csize; data: pointer) {.
    cdecl, importcpp: "TakeData", header: "<wx/wx.h>".}
proc alloc*(this: var WxCustomDataObject; size: csize): pointer {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc free*(this: var WxCustomDataObject) {.cdecl, importcpp: "Free", 
    header: "<wx/wx.h>".}
proc getSize*(this: WxCustomDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc getData*(this: WxCustomDataObject): pointer {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxCustomDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxCustomDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxCustomDataObject; size: csize; buf: pointer): bool {.
    cdecl, importcpp: "SetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxCustomDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxCustomDataObject; a3: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxCustomDataObject; a3: WxDataFormat; len: csize; 
              buf: pointer): bool {.cdecl, importcpp: "SetData", 
                                    header: "<wx/wx.h>".}

type 
  WxURLDataObject* {.importcpp: "wxURLDataObject", header: "<wx/wx.h>".} = object of WxTextDataObject
  

proc constructwxURLDataObject*(url: WxString = wxEmptyString): WxURLDataObject {.
    cdecl, constructor, importcpp: "wxURLDataObject(@)", header: "<wx/wx.h>".}
proc getURL*(this: WxURLDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: "<wx/wx.h>".}
proc setURL*(this: var WxURLDataObject; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: "<wx/wx.h>".}