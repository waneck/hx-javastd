package javax.swing;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class RowFilter<M, I>
{
	/**
	* Returns a <code>RowFilter</code> that uses a regular
	* expression to determine which entries to include.  Only entries
	* with at least one matching value are included.  For
	* example, the following creates a <code>RowFilter</code> that
	* includes entries with at least one value starting with
	* "a":
	* <pre>
	*   RowFilter.regexFilter("^a");
	* </pre>
	* <p>
	* The returned filter uses {@link java.util.regex.Matcher#find}
	* to test for inclusion.  To test for exact matches use the
	* characters '^' and '$' to match the beginning and end of the
	* string respectively.  For example, "^foo$" includes only rows whose
	* string is exactly "foo" and not, for example, "food".  See
	* {@link java.util.regex.Pattern} for a complete description of
	* the supported regular-expression constructs.
	*
	* @param regex the regular expression to filter on
	* @param indices the indices of the values to check.  If not supplied all
	*               values are evaluated
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @throws NullPointerException if <code>regex</code> is
	*         <code>null</code>
	* @throws IllegalArgumentException if any of the <code>indices</code>
	*         are &lt; 0
	* @throws PatternSyntaxException if <code>regex</code> is
	*         not a valid regular expression.
	* @see java.util.regex.Pattern
	*/
	@:overload public static function regexFilter<M, I>(regex : String, indices : java.NativeArray<Int>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns a <code>RowFilter</code> that includes entries that
	* have at least one <code>Date</code> value meeting the specified
	* criteria.  For example, the following <code>RowFilter</code> includes
	* only entries with at least one date value after the current date:
	* <pre>
	*   RowFilter.dateFilter(ComparisonType.AFTER, new Date());
	* </pre>
	*
	* @param type the type of comparison to perform
	* @param date the date to compare against
	* @param indices the indices of the values to check.  If not supplied all
	*               values are evaluated
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @throws NullPointerException if <code>date</code> is
	*          <code>null</code>
	* @throws IllegalArgumentException if any of the <code>indices</code>
	*         are &lt; 0 or <code>type</code> is
	*         <code>null</code>
	* @see java.util.Calendar
	* @see java.util.Date
	*/
	@:overload public static function dateFilter<M, I>(type : javax.swing.RowFilter.RowFilter_ComparisonType, date : java.util.Date, indices : java.NativeArray<Int>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns a <code>RowFilter</code> that includes entries that
	* have at least one <code>Number</code> value meeting the
	* specified criteria.  For example, the following
	* filter will only include entries with at
	* least one number value equal to 10:
	* <pre>
	*   RowFilter.numberFilter(ComparisonType.EQUAL, 10);
	* </pre>
	*
	* @param type the type of comparison to perform
	* @param indices the indices of the values to check.  If not supplied all
	*               values are evaluated
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @throws IllegalArgumentException if any of the <code>indices</code>
	*         are &lt; 0, <code>type</code> is <code>null</code>
	*         or <code>number</code> is <code>null</code>
	*/
	@:overload public static function numberFilter<M, I>(type : javax.swing.RowFilter.RowFilter_ComparisonType, number : java.lang.Number, indices : java.NativeArray<Int>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns a <code>RowFilter</code> that includes entries if any
	* of the supplied filters includes the entry.
	* <p>
	* The following example creates a <code>RowFilter</code> that will
	* include any entries containing the string "foo" or the string
	* "bar":
	* <pre>
	*   List&lt;RowFilter&lt;Object,Object&gt;&gt; filters = new ArrayList&lt;RowFilter&lt;Object,Object&gt;&gt;(2);
	*   filters.add(RowFilter.regexFilter("foo"));
	*   filters.add(RowFilter.regexFilter("bar"));
	*   RowFilter&lt;Object,Object&gt; fooBarFilter = RowFilter.orFilter(filters);
	* </pre>
	*
	* @param filters the <code>RowFilter</code>s to test
	* @throws IllegalArgumentException if any of the filters
	*         are <code>null</code>
	* @throws NullPointerException if <code>filters</code> is null
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @see java.util.Arrays#asList
	*/
	@:overload public static function orFilter<M, I>(filters : java.lang.Iterable<javax.swing.RowFilter<M, I>>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns a <code>RowFilter</code> that includes entries if all
	* of the supplied filters include the entry.
	* <p>
	* The following example creates a <code>RowFilter</code> that will
	* include any entries containing the string "foo" and the string
	* "bar":
	* <pre>
	*   List&lt;RowFilter&lt;Object,Object&gt;&gt; filters = new ArrayList&lt;RowFilter&lt;Object,Object&gt;&gt;(2);
	*   filters.add(RowFilter.regexFilter("foo"));
	*   filters.add(RowFilter.regexFilter("bar"));
	*   RowFilter&lt;Object,Object&gt; fooBarFilter = RowFilter.andFilter(filters);
	* </pre>
	*
	* @param filters the <code>RowFilter</code>s to test
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @throws IllegalArgumentException if any of the filters
	*         are <code>null</code>
	* @throws NullPointerException if <code>filters</code> is null
	* @see java.util.Arrays#asList
	*/
	@:overload public static function andFilter<M, I>(filters : java.lang.Iterable<javax.swing.RowFilter<M, I>>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns a <code>RowFilter</code> that includes entries if the
	* supplied filter does not include the entry.
	*
	* @param filter the <code>RowFilter</code> to negate
	* @return a <code>RowFilter</code> implementing the specified criteria
	* @throws IllegalArgumentException if <code>filter</code> is
	*         <code>null</code>
	*/
	@:overload public static function notFilter<M, I>(filter : javax.swing.RowFilter<M, I>) : javax.swing.RowFilter<M, I>;
	
	/**
	* Returns true if the specified entry should be shown;
	* returns false if the entry should be hidden.
	* <p>
	* The <code>entry</code> argument is valid only for the duration of
	* the invocation.  Using <code>entry</code> after the call returns
	* results in undefined behavior.
	*
	* @param entry a non-<code>null</code> object that wraps the underlying
	*              object from the model
	* @return true if the entry should be shown
	*/
	@:overload @:abstract public function include(entry : javax.swing.RowFilter.RowFilter_Entry<M, I>) : Bool;
	
	
}
/**
* Enumeration of the possible comparison values supported by
* some of the default <code>RowFilter</code>s.
*
* @see RowFilter
* @since 1.6
*/
@:require(java6) @:native('javax$swing$RowFilter$ComparisonType') extern enum RowFilter_ComparisonType
{
	/**
	* Indicates that entries with a value before the supplied
	* value should be included.
	*/
	BEFORE;
	/**
	* Indicates that entries with a value after the supplied
	* value should be included.
	*/
	AFTER;
	/**
	* Indicates that entries with a value equal to the supplied
	* value should be included.
	*/
	EQUAL;
	/**
	* Indicates that entries with a value not equal to the supplied
	* value should be included.
	*/
	NOT_EQUAL;
	
}

/**
* An <code>Entry</code> object is passed to instances of
* <code>RowFilter</code>, allowing the filter to get the value of the
* entry's data, and thus to determine whether the entry should be shown.
* An <code>Entry</code> object contains information about the model
* as well as methods for getting the underlying values from the model.
*
* @param <M> the type of the model; for example <code>PersonModel</code>
* @param <I> the type of the identifier; when using
*            <code>TableRowSorter</code> this will be <code>Integer</code>
* @see javax.swing.RowFilter
* @see javax.swing.DefaultRowSorter#setRowFilter(javax.swing.RowFilter)
* @since 1.6
*/
@:require(java6) @:native('javax$swing$RowFilter$Entry') extern class RowFilter_Entry<M, I>
{
	/**
	* Creates an <code>Entry</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the underlying model.
	*
	* @return the model containing the data that this entry represents
	*/
	@:overload @:abstract public function getModel() : M;
	
	/**
	* Returns the number of values in the entry.  For
	* example, when used with a table this corresponds to the
	* number of columns.
	*
	* @return number of values in the object being filtered
	*/
	@:overload @:abstract public function getValueCount() : Int;
	
	/**
	* Returns the value at the specified index.  This may return
	* <code>null</code>.  When used with a table, index
	* corresponds to the column number in the model.
	*
	* @param index the index of the value to get
	* @return value at the specified index
	* @throws <code>IndexOutOfBoundsException</code> if index &lt; 0 or
	*         &gt;= getValueCount
	*/
	@:overload @:abstract public function getValue(index : Int) : Dynamic;
	
	/**
	* Returns the string value at the specified index.  If
	* filtering is being done based on <code>String</code> values
	* this method is preferred to that of <code>getValue</code>
	* as <code>getValue(index).toString()</code> may return a
	* different result than <code>getStringValue(index)</code>.
	* <p>
	* This implementation calls <code>getValue(index).toString()</code>
	* after checking for <code>null</code>.  Subclasses that provide
	* different string conversion should override this method if
	* necessary.
	*
	* @param index the index of the value to get
	* @return {@code non-null} string at the specified index
	* @throws <code>IndexOutOfBoundsException</code> if index &lt; 0 ||
	*         &gt;= getValueCount
	*/
	@:overload public function getStringValue(index : Int) : String;
	
	/**
	* Returns the identifer (in the model) of the entry.
	* For a table this corresponds to the index of the row in the model,
	* expressed as an <code>Integer</code>.
	*
	* @return a model-based (not view-based) identifier for
	*         this entry
	*/
	@:overload @:abstract public function getIdentifier() : I;
	
	
}
@:native('javax$swing$RowFilter$GeneralFilter') @:internal extern class RowFilter_GeneralFilter extends javax.swing.RowFilter<Dynamic, Dynamic>
{
	@:overload override public function include(value : javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>) : Bool;
	
	@:overload @:abstract private function include(value : javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>, index : Int) : Bool;
	
	
}
@:native('javax$swing$RowFilter$RegexFilter') @:internal extern class RowFilter_RegexFilter extends javax.swing.RowFilter.RowFilter_GeneralFilter
{
	@:overload override private function include(value : javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>, index : Int) : Bool;
	
	
}
@:native('javax$swing$RowFilter$DateFilter') @:internal extern class RowFilter_DateFilter extends javax.swing.RowFilter.RowFilter_GeneralFilter
{
	@:overload override private function include(value : javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>, index : Int) : Bool;
	
	
}
@:native('javax$swing$RowFilter$NumberFilter') @:internal extern class RowFilter_NumberFilter extends javax.swing.RowFilter.RowFilter_GeneralFilter
{
	@:overload override private function include(value : javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>, index : Int) : Bool;
	
	
}
@:native('javax$swing$RowFilter$OrFilter') @:internal extern class RowFilter_OrFilter<M, I> extends javax.swing.RowFilter<M, I>
{
	@:overload override public function include(value : javax.swing.RowFilter.RowFilter_Entry<M, I>) : Bool;
	
	
}
@:native('javax$swing$RowFilter$AndFilter') @:internal extern class RowFilter_AndFilter<M, I> extends javax.swing.RowFilter.RowFilter_OrFilter<M, I>
{
	@:overload override public function include(value : javax.swing.RowFilter.RowFilter_Entry<M, I>) : Bool;
	
	
}
@:native('javax$swing$RowFilter$NotFilter') @:internal extern class RowFilter_NotFilter<M, I> extends javax.swing.RowFilter<M, I>
{
	@:overload override public function include(value : javax.swing.RowFilter.RowFilter_Entry<M, I>) : Bool;
	
	
}
