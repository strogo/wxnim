#def size_type long

class WXDLLIMPEXP_BASE wxArrayString
{
public:
  // type of function used by wxArrayString::Sort()
  typedef int (*CompareFunction)(const wxString& first,
                                 const wxString& second);
  // type of function used by wxArrayString::Sort(), for compatibility with
  // wxArray
  typedef int (*CompareFunction2)(wxString* first,
                                  wxString* second);

  // constructors and destructor
    // default ctor
  wxArrayString() { Init(false); }
    // if autoSort is true, the array is always sorted (in alphabetical order)
    //
    // NB: the reason for using int and not bool is that like this we can avoid
    //     using this ctor for implicit conversions from "const char *" (which
    //     we'd like to be implicitly converted to wxString instead!). This
    //     wouldn't be needed if the 'explicit' keyword was supported by all
    //     compilers, or if this was protected ctor for wxSortedArrayString,
    //     but we're stuck with it now.
  wxEXPLICIT wxArrayString(int autoSort) { Init(autoSort != 0); }
    // C string array ctor
  wxArrayString(size_t sz, const char** a);

  wxArrayString(size_t sz, const wxString* a);
    // copy ctor
  wxArrayString(const wxArrayString& array);
    // assignment operator
  wxArrayString& operator=(const wxArrayString& src);
    // not virtual, this class should not be derived from
 ~wxArrayString();

  // memory management
    // empties the list, but doesn't release memory
  void Empty();
    // empties the list and releases memory
  void Clear();
    // preallocates memory for given number of items
  void Alloc(size_t nCount);
    // minimzes the memory usage (by freeing all extra memory)
  void Shrink();

  // simple accessors
    // number of elements in the array
  size_t GetCount() const { return m_nCount; }
    // is it empty?
  bool IsEmpty() const { return m_nCount == 0; }
    // number of elements in the array (GetCount is preferred API)
  size_t Count() const { return m_nCount; }

  // items access (range checking is done in debug version)
    // get item at position uiIndex
  wxString& Item(size_t nIndex)
    {
        wxASSERT_MSG( nIndex < m_nCount,
                      wxT("wxArrayString: index out of bounds") );

        return m_pItems[nIndex];
    }
  const wxString& Item(size_t nIndex) const { return const_cast<wxArrayString*>(this)->Item(nIndex); }

    // same as Item()
  wxString& operator[](size_t nIndex) { return Item(nIndex); }
  const wxString& operator[](size_t nIndex) const { return Item(nIndex); }
    // get last item
  wxString& Last()
  {
      wxASSERT_MSG( !IsEmpty(),
                    wxT("wxArrayString: index out of bounds") );
      return Item(GetCount() - 1);
  }
  const wxString& Last() const { return const_cast<wxArrayString*>(this)->Last(); }


  // item management
    // Search the element in the array, starting from the beginning if
    // bFromEnd is false or from end otherwise. If bCase, comparison is case
    // sensitive (default). Returns index of the first item matched or
    // wxNOT_FOUND
  int  Index (const wxString& str, bool bCase = true, bool bFromEnd = false) const;
    // add new element at the end (if the array is not sorted), return its
    // index
  size_t Add(const wxString& str, size_t nInsert = 1);
    // add new element at given position
  void Insert(const wxString& str, size_t uiIndex, size_t nInsert = 1);
    // expand the array to have count elements
  void SetCount(size_t count);
    // remove first item matching this value
  void Remove(const wxString& sz);
    // remove item by index
  void RemoveAt(size_t nIndex, size_t nRemove = 1);

  // sorting
    // sort array elements in alphabetical order (or reversed alphabetical
    // order if reverseOrder parameter is true)
  void Sort(bool reverseOrder = false);
    // sort array elements using specified comparison function
  void Sort(CompareFunction compareFunction);
  void Sort(CompareFunction2 compareFunction);

  // comparison
    // compare two arrays case sensitively
  bool operator==(const wxArrayString& a) const;

  size_type capacity() const { return m_nSize; }

  bool empty() const { return IsEmpty(); }

  void reserve(size_type n) /* base::reserve*/;
  void resize(size_type n);
  size_type size() const { return GetCount(); }
  void swap(wxArrayString& other)
  {
      wxSwap(m_nSize, other.m_nSize);
      wxSwap(m_nCount, other.m_nCount);
      wxSwap(m_pItems, other.m_pItems);
      wxSwap(m_autoSort, other.m_autoSort);
  }

protected:
  void Init(bool autoSort);             // common part of all ctors
  void Copy(const wxArrayString& src);  // copies the contents of another array

private:
  // Allocate the new buffer big enough to hold m_nCount + nIncrement items and
  // return the pointer to the old buffer, which must be deleted by the caller
  // (if the old buffer is big enough, just return NULL).
  wxString *Grow(size_t nIncrement);

  size_t  m_nSize,    // current size of the array
          m_nCount;   // current number of elements

  wxString *m_pItems; // pointer to data

  bool    m_autoSort; // if true, keep the array always sorted
};

// this class provides a temporary wxString* from a
// wxArrayString
class WXDLLIMPEXP_BASE wxCArrayString
{
public:
    wxCArrayString( const wxArrayString& array )
        : m_array( array ), m_strings( NULL )
    { }
    ~wxCArrayString() { delete[] m_strings; }

    size_t GetCount() const { return m_array.GetCount(); }
    wxString* GetStrings()
    {
        if( m_strings ) return m_strings;
        size_t count = m_array.GetCount();
        m_strings = new wxString[count];
        for( size_t i = 0; i < count; ++i )
            m_strings[i] = m_array[i];
        return m_strings;
    }

    wxString* Release()
    {
        wxString *r = GetStrings();
        m_strings = NULL;
        return r;
    }

private:
    const wxArrayString& m_array;
    wxString* m_strings;
};


// ----------------------------------------------------------------------------
// helper functions for working with arrays
// ----------------------------------------------------------------------------

// by default, these functions use the escape character to escape the
// separators occurring inside the string to be joined, this can be disabled by
// passing '\0' as escape

WXDLLIMPEXP_BASE wxString wxJoin(const wxArrayString& arr,
                                 const char sep,
                                  const char escape = '\\');

WXDLLIMPEXP_BASE wxArrayString wxSplit(const wxString& str,
                                       const char sep,
                                       const char escape = '\\');


// ----------------------------------------------------------------------------
// This helper class allows to pass both C array of wxStrings or wxArrayString
// using the same interface.
//
// Use it when you have two methods taking wxArrayString or (int, wxString[]),
// that do the same thing. This class lets you iterate over input data in the
// same way whether it is a raw array of strings or wxArrayString.
//
// The object does not take ownership of the data -- internally it keeps
// pointers to the data, therefore the data must be disposed of by user
// and only after this object is destroyed. Usually it is not a problem as
// only temporary objects of this class are used.
// ----------------------------------------------------------------------------

class wxArrayStringsAdapter
{
public:
    // construct an adapter from a wxArrayString
    wxArrayStringsAdapter(const wxArrayString& strings)
        : m_type(wxSTRING_ARRAY), m_size(strings.size())
    {
        m_data.array = &strings;
    }

    // construct an adapter from a wxString[]
    wxArrayStringsAdapter(unsigned int n, const wxString *strings)
        : m_type(wxSTRING_POINTER), m_size(n)
    {
        m_data.ptr = strings;
    }

    // construct an adapter from a single wxString
    wxArrayStringsAdapter(const wxString& s)
        : m_type(wxSTRING_POINTER), m_size(1)
    {
        m_data.ptr = &s;
    }

    // default copy constructor is ok

    // iteration interface
    size_t GetCount() const { return m_size; }
    bool IsEmpty() const { return GetCount() == 0; }
    const wxString& operator[] (unsigned int i) const
    {
        wxASSERT_MSG( i < GetCount(), wxT("index out of bounds") );
        if(m_type == wxSTRING_POINTER)
            return m_data.ptr[i];
        return m_data.array->Item(i);
    }
    wxArrayString AsArrayString() const
    {
        if(m_type == wxSTRING_ARRAY)
            return *m_data.array;
        return wxArrayString(GetCount(), m_data.ptr);
    }
};
