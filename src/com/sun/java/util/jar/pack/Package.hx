package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Define the main data structure transmitted by pack/unpack.
* @author John Rose
*/
@:internal extern class Package
{
	@:overload public function reset() : Void;
	
	public static var attrCodeEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	public static var attrInnerClassesEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	public static var attrSourceFileSpecial(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	public static var attrDefs(default, null) : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, com.sun.java.util.jar.pack.Attribute>;
	
	@:overload public function getClasses() : java.util.List<com.sun.java.util.jar.pack.Package.Package_Class>;
	
	@:overload public function getFiles() : java.util.List<com.sun.java.util.jar.pack.Package.Package_File>;
	
	@:overload public function getClassStubs() : java.util.List<com.sun.java.util.jar.pack.Package.Package_File>;
	
	@:overload public function getAllInnerClasses() : java.util.List<com.sun.java.util.jar.pack.Package.Package_InnerClass>;
	
	@:overload public function setAllInnerClasses(ics : java.util.Collection<com.sun.java.util.jar.pack.Package.Package_InnerClass>) : Void;
	
	/** Return a global inner class record for the given thisClass. */
	@:overload public function getGlobalInnerClass(thisClass : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : com.sun.java.util.jar.pack.Package.Package_InnerClass;
	
	@:overload public function trimToSize() : Void;
	
	@:overload public function strip(attrName : String) : Void;
	
	@:overload public static function versionStringOf(majver : Int, minver : Int) : String;
	
	@:overload public static function versionStringOf(version : Int) : String;
	
	@:overload public function stripConstantFields() : Void;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$Class') extern class Package_Class extends com.sun.java.util.jar.pack.Attribute.Attribute_Holder implements java.lang.Comparable<com.sun.java.util.jar.pack.Package.Package_Class>
{
	@:overload public function getPackage() : com.sun.java.util.jar.pack.Package;
	
	@:overload public function getName() : String;
	
	@:overload public function compareTo(that : com.sun.java.util.jar.pack.Package.Package_Class) : Int;
	
	@:overload private function getCPMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload private function setCPMap(cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function setInnerClasses(ics : java.util.Collection<com.sun.java.util.jar.pack.Package.Package_InnerClass>) : Void;
	
	/** Given a global map of ICs (keyed by thisClass),
	*  compute the subset of its Map.values which are
	*  required to be present in the local InnerClasses
	*  attribute.  Perform this calculation without
	*  reference to any actual InnerClasses attribute.
	*  <p>
	*  The order of the resulting list is consistent
	*  with that of Package.this.allInnerClasses.
	*/
	@:overload public function computeGloballyImpliedICs() : java.util.List<com.sun.java.util.jar.pack.Package.Package_InnerClass>;
	
	@:overload public function trimToSize() : Void;
	
	@:overload public function strip(attrName : String) : Void;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload private function visitInnerClassRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function initFile(file : com.sun.java.util.jar.pack.Package.Package_File) : Void;
	
	@:overload public function maybeChooseFileName() : Void;
	
	@:overload public function canonicalFileName() : String;
	
	@:overload public function getFileName(parent : java.io.File) : java.io.File;
	
	@:overload public function getFileName() : java.io.File;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$Class$Member') extern class Package_Class_Member extends com.sun.java.util.jar.pack.Attribute.Attribute_Holder implements java.lang.Comparable<com.sun.java.util.jar.pack.Package.Package_Class_Member>
{
	@:overload private function new(flags : Int, descriptor : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry) : Void;
	
	@:overload public function thisClass() : com.sun.java.util.jar.pack.Package.Package_Class;
	
	@:overload public function getDescriptor() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry;
	
	@:overload public function getName() : String;
	
	@:overload public function getType() : String;
	
	@:overload private function getCPMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function toString() : String;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$Class$Field') extern class Package_Class_Field extends com.sun.java.util.jar.pack.Package.Package_Class_Member
{
	@:overload public function new(flags : Int, descriptor : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry) : Void;
	
	@:overload public function getLiteralTag() : java.StdTypes.Int8;
	
	@:overload public function compareTo(o : com.sun.java.util.jar.pack.Package.Package_Class_Member) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$Class$Method') extern class Package_Class_Method extends com.sun.java.util.jar.pack.Package.Package_Class_Member
{
	@:overload public function new(flags : Int, descriptor : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry) : Void;
	
	@:overload public function trimToSize() : Void;
	
	@:overload public function getArgumentSize() : Int;
	
	@:overload public function compareTo(o : com.sun.java.util.jar.pack.Package.Package_Class_Member) : Int;
	
	@:overload public function strip(attrName : String) : Void;
	
	@:overload override private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$File') extern class Package_File implements java.lang.Comparable<com.sun.java.util.jar.pack.Package.Package_File>
{
	@:overload public function isDirectory() : Bool;
	
	@:overload public function isClassStub() : Bool;
	
	@:overload public function getStubClass() : com.sun.java.util.jar.pack.Package.Package_Class;
	
	@:overload public function isTrivialClassStub() : Bool;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function compareTo(that : com.sun.java.util.jar.pack.Package.Package_File) : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function getFileName() : java.io.File;
	
	@:overload public function getFileName(parent : java.io.File) : java.io.File;
	
	@:overload public function addBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function addBytes(bytes : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function getFileLength() : haxe.Int64;
	
	@:overload public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload public function readFrom(_in : java.io.InputStream) : Void;
	
	@:overload public function getInputStream() : java.io.InputStream;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Package$InnerClass') @:internal extern class Package_InnerClass implements java.lang.Comparable<com.sun.java.util.jar.pack.Package.Package_InnerClass>
{
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function compareTo(that : com.sun.java.util.jar.pack.Package.Package_InnerClass) : Int;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function toString() : String;
	
	
}
