package javax.naming.spi;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ContinuationDirContext extends javax.naming.spi.ContinuationContext implements javax.naming.directory.DirContext
{
	@:overload private function getTargetContext(name : javax.naming.Name) : DirContextNamePair;
	
	@:overload private function getTargetContext(name : String) : DirContextStringPair;
	
	@:overload public function getAttributes(name : String) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : String, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function createSubcontext(name : String, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, filterExpr : String, args : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, filterExpr : String, args : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function getSchema(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchema(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	
}
@:internal extern class DirContextNamePair
{
	
}
@:internal extern class DirContextStringPair
{
	
}
