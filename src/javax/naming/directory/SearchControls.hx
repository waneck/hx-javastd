package javax.naming.directory;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class encapsulates
* factors that determine scope of search and what gets returned
* as a result of the search.
*<p>
* A SearchControls instance is not synchronized against concurrent
* multithreaded access. Multiple threads trying to access and modify
* a single SearchControls instance should lock the object.
*
* @author Rosanna Lee
* @author Scott Seligman
* @since 1.3
*/
@:require(java3) extern class SearchControls implements java.io.Serializable
{
	/**
	* Search the named object.
	*<p>
	* The NamingEnumeration that results from search()
	* using OBJECT_SCOPE will contain one or zero element.
	* The enumeration contains one element if the named object satisfies
	* the search filter specified in search().
	* The element will have as its name the empty string because the names
	* of elements in the NamingEnumeration are relative to the
	* target context--in this case, the target context is the named object.
	* It contains zero element if the named object does not satisfy
	* the search filter specified in search().
	* <p>
	* The value of this constant is <tt>0</tt>.
	*/
	@:public @:final @:static public static var OBJECT_SCOPE(default, null) : Int;
	
	/**
	* Search one level of the named context.
	*<p>
	* The NamingEnumeration that results from search()
	* using ONELEVEL_SCOPE contains elements with
	* objects in the named context that satisfy
	* the search filter specified in search().
	* The names of elements in the NamingEnumeration are atomic names
	* relative to the named context.
	* <p>
	* The value of this constant is <tt>1</tt>.
	*/
	@:public @:final @:static public static var ONELEVEL_SCOPE(default, null) : Int;
	
	/**
	* Search the entire subtree rooted at the named object.
	*<p>
	* If the named object is not a DirContext, search only the object.
	* If the named object is a DirContext, search the subtree
	* rooted at the named object, including the named object itself.
	*<p>
	* The search will not cross naming system boundaries.
	*<p>
	* The NamingEnumeration that results from search()
	* using SUBTREE_SCOPE contains elements of objects
	* from the subtree (including the named context)
	* that satisfy the search filter specified in search().
	* The names of elements in the NamingEnumeration are either
	* relative to the named context or is a URL string.
	* If the named context satisfies the search filter, it is
	* included in the enumeration with the empty string as
	* its name.
	* <p>
	* The value of this constant is <tt>2</tt>.
	*/
	@:public @:final @:static public static var SUBTREE_SCOPE(default, null) : Int;
	
	/**
	* Constructs a search constraints using defaults.
	*<p>
	* The defaults are:
	* <ul>
	* <li>search one level
	* <li>no maximum return limit for search results
	* <li>no time limit for search
	* <li>return all attributes associated with objects that satisfy
	*   the search filter.
	* <li>do not return named object  (return only name and class)
	* <li>do not dereference links during search
	*</ul>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a search constraints using arguments.
	* @param scope     The search scope.  One of:
	*                  OBJECT_SCOPE, ONELEVEL_SCOPE, SUBTREE_SCOPE.
	* @param timelim   The number of milliseconds to wait before returning.
	*                  If 0, wait indefinitely.
	* @param deref     If true, dereference links during search.
	* @param countlim  The maximum number of entries to return.  If 0, return
	*                  all entries that satisfy filter.
	* @param retobj    If true, return the object bound to the name of the
	*                  entry; if false, do not return object.
	* @param attrs     The identifiers of the attributes to return along with
	*                  the entry.  If null, return all attributes. If empty
	*                  return no attributes.
	*/
	@:overload @:public public function new(scope : Int, countlim : haxe.Int64, timelim : Int, attrs : java.NativeArray<String>, retobj : Bool, deref : Bool) : Void;
	
	/**
	* Retrieves the search scope of these SearchControls.
	*<p>
	* One of OBJECT_SCOPE, ONELEVEL_SCOPE, SUBTREE_SCOPE.
	*
	* @return The search scope of this SearchControls.
	* @see #setSearchScope
	*/
	@:overload @:public public function getSearchScope() : Int;
	
	/**
	* Retrieves the time limit of these SearchControls in milliseconds.
	*<p>
	* If the value is 0, this means to wait indefinitely.
	* @return The time limit of these SearchControls in milliseconds.
	* @see #setTimeLimit
	*/
	@:overload @:public public function getTimeLimit() : Int;
	
	/**
	* Determines whether links will be dereferenced during the search.
	*
	* @return true if links will be dereferenced; false otherwise.
	* @see #setDerefLinkFlag
	*/
	@:overload @:public public function getDerefLinkFlag() : Bool;
	
	/**
	* Determines whether objects will be returned as part of the result.
	*
	* @return true if objects will be returned; false otherwise.
	* @see #setReturningObjFlag
	*/
	@:overload @:public public function getReturningObjFlag() : Bool;
	
	/**
	* Retrieves the maximum number of entries that will be returned
	* as a result of the search.
	*<p>
	* 0 indicates that all entries will be returned.
	* @return The maximum number of entries that will be returned.
	* @see #setCountLimit
	*/
	@:overload @:public public function getCountLimit() : haxe.Int64;
	
	/**
	* Retrieves the attributes that will be returned as part of the search.
	*<p>
	* A value of null indicates that all attributes will be returned.
	* An empty array indicates that no attributes are to be returned.
	*
	* @return An array of attribute ids identifying the attributes that
	* will be returned. Can be null.
	* @see #setReturningAttributes
	*/
	@:overload @:public public function getReturningAttributes() : java.NativeArray<String>;
	
	/**
	* Sets the search scope to one of:
	* OBJECT_SCOPE, ONELEVEL_SCOPE, SUBTREE_SCOPE.
	* @param scope     The search scope of this SearchControls.
	* @see #getSearchScope
	*/
	@:overload @:public public function setSearchScope(scope : Int) : Void;
	
	/**
	* Sets the time limit of these SearchControls in milliseconds.
	*<p>
	* If the value is 0, this means to wait indefinitely.
	* @param ms        The time limit of these SearchControls in milliseconds.
	* @see #getTimeLimit
	*/
	@:overload @:public public function setTimeLimit(ms : Int) : Void;
	
	/**
	* Enables/disables link dereferencing during the search.
	*
	* @param on        if true links will be dereferenced; if false, not followed.
	* @see #getDerefLinkFlag
	*/
	@:overload @:public public function setDerefLinkFlag(on : Bool) : Void;
	
	/**
	* Enables/disables returning objects returned as part of the result.
	*<p>
	* If disabled, only the name and class of the object is returned.
	* If enabled, the object will be returned.
	*
	* @param on        if true, objects will be returned; if false,
	*                  objects will not be returned.
	* @see #getReturningObjFlag
	*/
	@:overload @:public public function setReturningObjFlag(on : Bool) : Void;
	
	/**
	* Sets the maximum number of entries to be returned
	* as a result of the search.
	*<p>
	* 0 indicates no limit:  all entries will be returned.
	*
	* @param limit The maximum number of entries that will be returned.
	* @see #getCountLimit
	*/
	@:overload @:public public function setCountLimit(limit : haxe.Int64) : Void;
	
	/**
	* Specifies the attributes that will be returned as part of the search.
	*<p>
	* null indicates that all attributes will be returned.
	* An empty array indicates no attributes are returned.
	*
	* @param attrs An array of attribute ids identifying the attributes that
	*              will be returned. Can be null.
	* @see #getReturningAttributes
	*/
	@:overload @:public public function setReturningAttributes(attrs : java.NativeArray<String>) : Void;
	
	
}
