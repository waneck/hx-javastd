package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class JobStateReasons extends java.util.HashSet<javax.print.attribute.standard.JobStateReason> implements javax.print.attribute.PrintJobAttribute
{
	/**
	* Construct a new, empty job state reasons attribute; the underlying hash
	* set has the default initial capacity and load factor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a new, empty job state reasons attribute; the underlying hash
	* set has the given initial capacity and the default load factor.
	*
	* @param  initialCapacity  Initial capacity.
	* @throws IllegalArgumentException if the initial capacity is less
	*     than zero.
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Construct a new, empty job state reasons attribute; the underlying hash
	* set has the given initial capacity and load factor.
	*
	* @param  initialCapacity  Initial capacity.
	* @param  loadFactor       Load factor.
	* @throws IllegalArgumentException if the initial capacity is less
	*     than zero.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Construct a new job state reasons attribute that contains the same
	* {@link JobStateReason JobStateReason} objects as the given collection.
	* The underlying hash set's initial capacity and load factor are as
	* specified in the superclass constructor {@link
	* java.util.HashSet#HashSet(java.util.Collection)
	* <CODE>HashSet(Collection)</CODE>}.
	*
	* @param  collection  Collection to copy.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>collection</CODE> is null or
	*     if any element in <CODE>collection</CODE> is null.
	* @throws  ClassCastException
	*     (unchecked exception) Thrown if any element in
	*     <CODE>collection</CODE> is not an instance of class {@link
	*     JobStateReason JobStateReason}.
	*/
	@:overload @:public public function new(collection : java.util.Collection<javax.print.attribute.standard.JobStateReason>) : Void;
	
	/**
	* Adds the specified element to this job state reasons attribute if it is
	* not already present. The element to be added must be an instance of class
	* {@link JobStateReason JobStateReason}. If this job state reasons
	* attribute already contains the specified element, the call leaves this
	* job state reasons attribute unchanged and returns <tt>false</tt>.
	*
	* @param  o  Element to be added to this job state reasons attribute.
	*
	* @return  <tt>true</tt> if this job state reasons attribute did not
	*          already contain the specified element.
	*
	* @throws  NullPointerException
	*     (unchecked exception) Thrown if the specified element is null.
	* @throws  ClassCastException
	*     (unchecked exception) Thrown if the specified element is not an
	*     instance of class {@link JobStateReason JobStateReason}.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function add(o : javax.print.attribute.standard.JobStateReason) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class JobStateReasons, the category is class JobStateReasons itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class JobStateReasons, the category
	* name is <CODE>"job-state-reasons"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	
}
