#///////////////////////////////////////////////////////////////////////////
# Name:        wx/fontenc.h
# Purpose:     wxFontEncoding constants
# Author:      Vadim Zeitlin
# Modified by:
# Created:     29.03.00
# Copyright:   (c) Vadim Zeitlin
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# font encodings

type
  WxFontEncoding* = enum
    wxFONTENCODING_SYSTEM = - 1, # system default
    wxFONTENCODING_DEFAULT,   # current default encoding
                              # ISO8859 standard defines a number of single-byte charsets
    wxFONTENCODING_ISO88591,  # West European (Latin1)
    wxFONTENCODING_ISO88592,  # Central and East European (Latin2)
    wxFONTENCODING_ISO88593,  # Esperanto (Latin3)
    wxFONTENCODING_ISO88594,  # Baltic (old) (Latin4)
    wxFONTENCODING_ISO88595,  # Cyrillic
    wxFONTENCODING_ISO88596,  # Arabic
    wxFONTENCODING_ISO88597,  # Greek
    wxFONTENCODING_ISO88598,  # Hebrew
    wxFONTENCODING_ISO88599,  # Turkish (Latin5)
    wxFONTENCODING_ISO885910, # Variation of Latin4 (Latin6)
    wxFONTENCODING_ISO885911, # Thai
    wxFONTENCODING_ISO885912, # doesn't exist currently, but put it
                              # here anyhow to make all ISO8859
                              # consecutive numbers
    wxFONTENCODING_ISO885913, # Baltic (Latin7)
    wxFONTENCODING_ISO885914, # Latin8
    wxFONTENCODING_ISO885915, # Latin9 (a.k.a. Latin0, includes euro)
    wxFONTENCODING_ISO8859MAX, # Cyrillic charset soup (see http://czyborra.com/charsets/cyrillic.html)
    wxFONTENCODING_KOI8,      # KOI8 Russian
    wxFONTENCODING_KOI8U,     # KOI8 Ukrainian
    wxFONTENCODING_ALTERNATIVE, # same as MS-DOS CP866
    wxFONTENCODING_BULGARIAN, # used under Linux in Bulgaria
                              # what would we do without Microsoft? They have their own encodings
                              # for DOS
    wxFONTENCODING_CP437,     # original MS-DOS codepage
    wxFONTENCODING_CP850,     # CP437 merged with Latin1
    wxFONTENCODING_CP852,     # CP437 merged with Latin2
    wxFONTENCODING_CP855,     # another cyrillic encoding
    wxFONTENCODING_CP866,     # and another one
                              # and for Windows
    wxFONTENCODING_CP874,     # WinThai
    wxFONTENCODING_CP932,     # Japanese (shift-JIS)
    wxFONTENCODING_CP936,     # Chinese simplified (GB)
    wxFONTENCODING_CP949,     # Korean (Hangul charset, a.k.a. EUC-KR)
    wxFONTENCODING_CP950,     # Chinese (traditional - Big5)
    wxFONTENCODING_CP1250,    # WinLatin2
    wxFONTENCODING_CP1251,    # WinCyrillic
    wxFONTENCODING_CP1252,    # WinLatin1
    wxFONTENCODING_CP1253,    # WinGreek (8859-7)
    wxFONTENCODING_CP1254,    # WinTurkish
    wxFONTENCODING_CP1255,    # WinHebrew
    wxFONTENCODING_CP1256,    # WinArabic
    wxFONTENCODING_CP1257,    # WinBaltic (same as Latin 7)
    wxFONTENCODING_CP1258,    # WinVietnamese
    wxFONTENCODING_CP1361,    # Johab Korean character set.
    wxFONTENCODING_CP12MAX, wxFONTENCODING_UTF7, # UTF-7 Unicode encoding
    wxFONTENCODING_UTF8,      # UTF-8 Unicode encoding
    wxFONTENCODING_EUC_JP,    # Extended Unix Codepage for Japanese
    wxFONTENCODING_UTF16BE,   # UTF-16 Big Endian Unicode encoding
    wxFONTENCODING_UTF16LE,   # UTF-16 Little Endian Unicode encoding
    wxFONTENCODING_UTF32BE,   # UTF-32 Big Endian Unicode encoding
    wxFONTENCODING_UTF32LE,   # UTF-32 Little Endian Unicode encoding
    wxFONTENCODING_MACROMAN,  # the standard mac encodings
    wxFONTENCODING_MACJAPANESE, wxFONTENCODING_MACCHINESETRAD,
    wxFONTENCODING_MACKOREAN, wxFONTENCODING_MACARABIC,
    wxFONTENCODING_MACHEBREW, wxFONTENCODING_MACGREEK,
    wxFONTENCODING_MACCYRILLIC, wxFONTENCODING_MACDEVANAGARI,
    wxFONTENCODING_MACGURMUKHI, wxFONTENCODING_MACGUJARATI,
    wxFONTENCODING_MACORIYA, wxFONTENCODING_MACBENGALI, wxFONTENCODING_MACTAMIL,
    wxFONTENCODING_MACTELUGU, wxFONTENCODING_MACKANNADA,
    wxFONTENCODING_MACMALAJALAM, wxFONTENCODING_MACSINHALESE,
    wxFONTENCODING_MACBURMESE, wxFONTENCODING_MACKHMER, wxFONTENCODING_MACTHAI,
    wxFONTENCODING_MACLAOTIAN, wxFONTENCODING_MACGEORGIAN,
    wxFONTENCODING_MACARMENIAN, wxFONTENCODING_MACCHINESESIMP,
    wxFONTENCODING_MACTIBETAN, wxFONTENCODING_MACMONGOLIAN,
    wxFONTENCODING_MACETHIOPIC, wxFONTENCODING_MACCENTRALEUR,
    wxFONTENCODING_MACVIATNAMESE, wxFONTENCODING_MACARABICEXT,
    wxFONTENCODING_MACSYMBOL, wxFONTENCODING_MACDINGBATS,
    wxFONTENCODING_MACTURKISH, wxFONTENCODING_MACCROATIAN,
    wxFONTENCODING_MACICELANDIC, wxFONTENCODING_MACROMANIAN,
    wxFONTENCODING_MACCELTIC, wxFONTENCODING_MACGAELIC, wxFONTENCODING_MACKEYBOARD, #
                                                                                    # more
                                                                                    # CJK
                                                                                    # encodings
                                                                                    # (for
                                                                                    # historical
                                                                                    # reasons
                                                                                    # some
                                                                                    # are
                                                                                    # already
                                                                                    # declared
                                                                                    #
                                                                                    # above)
    wxFONTENCODING_ISO2022JP, # ISO-2022-JP JIS encoding
    wxFONTENCODING_MAX        # highest enumerated encoding value

const
    wxFONTENCODING_MACMIN* = wxFONTENCODING_MACROMAN
    wxFONTENCODING_MACMAX* = wxFONTENCODING_MACKEYBOARD
    wxFONTENCODING_UTF16* = wxFONTENCODING_UTF16LE # native UTF-16
    wxFONTENCODING_UTF32* = wxFONTENCODING_UTF32LE # native UTF-32
                                                   # alias for the native Unicode encoding on this platform
                                                   # (this is used by wxEncodingConverter and wxUTFFile only for now)
    wxFONTENCODING_UNICODE* = wxFONTENCODING_UTF32 # alternative names for Far Eastern encodings
                                                   # Chinese
    wxFONTENCODING_GB2312* = wxFONTENCODING_CP936 # Simplified Chinese
    wxFONTENCODING_BIG5* = wxFONTENCODING_CP950 # Traditional Chinese
                                                # Japanese (see
                                                # http://zsigri.tripod.com/fontboard/cjk/jis.html)
    wxFONTENCODING_SHIFT_JIS* = wxFONTENCODING_CP932 # Shift JIS
                                                     # Korean (CP 949 not actually the same but close enough)
    wxFONTENCODING_EUC_KR* = wxFONTENCODING_CP949
    wxFONTENCODING_JOHAB* = wxFONTENCODING_CP1361
    wxFONTENCODING_VIETNAMESE* = wxFONTENCODING_CP1258
