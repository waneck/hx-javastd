package javax.naming.directory;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
* This class is the starting context for performing
* directory operations. The documentation in the class description
* of InitialContext (including those for synchronization) apply here.
*
*
* @author Rosanna Lee
* @author Scott Seligman
*
* @see javax.naming.InitialContext
* @since 1.3
*/
@:require(java3) extern class InitialDirContext extends javax.naming.InitialContext implements javax.naming.directory.DirContext
{
	/**
	* Constructs an initial DirContext with the option of not
	* initializing it.  This may be used by a constructor in
	* a subclass when the value of the environment parameter
	* is not yet known at the time the <tt>InitialDirContext</tt>
	* constructor is called.  The subclass's constructor will
	* call this constructor, compute the value of the environment,
	* and then call <tt>init()</tt> before returning.
	*
	* @param lazy
	*          true means do not initialize the initial DirContext; false
	*          is equivalent to calling <tt>new InitialDirContext()</tt>
	* @throws  NamingException if a naming exception is encountered
	*
	* @see InitialContext#init(Hashtable)
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function new(lazy : Bool) : Void;
	
	/**
	* Constructs an initial DirContext.
	* No environment properties are supplied.
	* Equivalent to <tt>new InitialDirContext(null)</tt>.
	*
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #InitialDirContext(Hashtable)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an initial DirContext using the supplied environment.
	* Environment properties are discussed in the
	* <tt>javax.naming.InitialContext</tt> class description.
	*
	* <p> This constructor will not modify <tt>environment</tt>
	* or save a reference to it, but may save a clone.
	* Caller should not modify mutable keys and values in
	* <tt>environment</tt> after it has been passed to the constructor.
	*
	* @param environment
	*          environment used to create the initial DirContext.
	*          Null indicates an empty environment.
	*
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload @:public public function new(environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function getAttributes(name : String) : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : String, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : javax.naming.Name) : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload @:public public function modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:public public function modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:public public function bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function createSubcontext(name : String, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:public public function createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchema(name : String) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchema(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchemaClassDefinition(name : String) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchemaClassDefinition(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload @:public public function search(name : String, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : String, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : String, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	@:overload @:public public function search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<javax.naming.directory.SearchResult>;
	
	
}
