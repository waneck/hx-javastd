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
extern class PrinterStateReasons extends java.util.HashMap<javax.print.attribute.standard.PrinterStateReason, javax.print.attribute.standard.Severity> implements javax.print.attribute.PrintServiceAttribute
{
	/**
	* Construct a new, empty printer state reasons attribute; the underlying
	* hash map has the default initial capacity and load factor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* super a new, empty printer state reasons attribute; the underlying
	* hash map has the given initial capacity and the default load factor.
	*
	* @param  initialCapacity  Initial capacity.
	*
	* @throws IllegalArgumentException if the initial capacity is less
	*     than zero.
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Construct a new, empty printer state reasons attribute; the underlying
	* hash map has the given initial capacity and load factor.
	*
	* @param  initialCapacity  Initial capacity.
	* @param  loadFactor       Load factor.
	*
	* @throws IllegalArgumentException if the initial capacity is less
	*     than zero.
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Construct a new printer state reasons attribute that contains the same
	* {@link PrinterStateReason PrinterStateReason}-to-{@link Severity
	* Severity} mappings as the given map. The underlying hash map's initial
	* capacity and load factor are as specified in the superclass constructor
	* {@link java.util.HashMap#HashMap(java.util.Map)
	* <CODE>HashMap(Map)</CODE>}.
	*
	* @param  map  Map to copy.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>map</CODE> is null or if any
	*     key or value in <CODE>map</CODE> is null.
	* @throws  ClassCastException
	*     (unchecked exception) Thrown if any key in <CODE>map</CODE> is not
	*   an instance of class {@link PrinterStateReason PrinterStateReason} or
	*     if any value in <CODE>map</CODE> is not an instance of class
	*     {@link Severity Severity}.
	*/
	@:overload @:public public function new(map : java.util.Map<javax.print.attribute.standard.PrinterStateReason, javax.print.attribute.standard.Severity>) : Void;
	
	/**
	* Adds the given printer state reason to this printer state reasons
	* attribute, associating it with the given severity level. If this
	* printer state reasons attribute previously contained a mapping for the
	* given printer state reason, the old value is replaced.
	*
	* @param  reason    Printer state reason. This must be an instance of
	*                    class {@link PrinterStateReason PrinterStateReason}.
	* @param  severity  Severity of the printer state reason. This must be
	*                      an instance of class {@link Severity Severity}.
	*
	* @return  Previous severity associated with the given printer state
	*          reason, or <tt>null</tt> if the given printer state reason was
	*          not present.
	*
	* @throws  NullPointerException
	*     (unchecked exception) Thrown if <CODE>reason</CODE> is null or
	*     <CODE>severity</CODE> is null.
	* @throws  ClassCastException
	*     (unchecked exception) Thrown if <CODE>reason</CODE> is not an
	*   instance of class {@link PrinterStateReason PrinterStateReason} or if
	*     <CODE>severity</CODE> is not an instance of class {@link Severity
	*     Severity}.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function put(reason : javax.print.attribute.standard.PrinterStateReason, severity : javax.print.attribute.standard.Severity) : javax.print.attribute.standard.Severity;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class PrinterStateReasons, the
	* category is class PrinterStateReasons itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class PrinterStateReasons, the
	* category name is <CODE>"printer-state-reasons"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	/**
	* Obtain an unmodifiable set view of the individual printer state reason
	* attributes at the given severity level in this PrinterStateReasons
	* attribute. Each element in the set view is a {@link PrinterStateReason
	* PrinterStateReason} object. The only elements in the set view are the
	* {@link PrinterStateReason PrinterStateReason} objects that map to the
	* given severity value. The set view is backed by this
	* PrinterStateReasons attribute, so changes to this PrinterStateReasons
	* attribute are reflected  in the set view.
	* The set view does not support element insertion or
	* removal. The set view's iterator does not support element removal.
	*
	* @param  severity  Severity level.
	*
	* @return  Set view of the individual {@link PrinterStateReason
	*          PrinterStateReason} attributes at the given {@link Severity
	*          Severity} level.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>severity</CODE> is null.
	*/
	@:overload @:public public function printerStateReasonSet(severity : javax.print.attribute.standard.Severity) : java.util.Set<javax.print.attribute.standard.PrinterStateReason>;
	
	
}
@:native('javax$print$attribute$standard$PrinterStateReasons$PrinterStateReasonSet') @:internal extern class PrinterStateReasons_PrinterStateReasonSet extends java.util.AbstractSet<javax.print.attribute.standard.PrinterStateReason>
{
	@:overload @:public public function new(severity : javax.print.attribute.standard.Severity, entrySet : java.util.Set<Dynamic>) : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	
}
@:native('javax$print$attribute$standard$PrinterStateReasons$PrinterStateReasonSetIterator') @:internal extern class PrinterStateReasons_PrinterStateReasonSetIterator implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function new(severity : javax.print.attribute.standard.Severity, iterator : java.util.Iterator<Dynamic>) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}
