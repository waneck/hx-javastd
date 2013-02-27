package sun.tools.util;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
*   A class whose instances are filters over Modifier bits.
*   Filtering is done by returning boolean values.
*   Classes, methods and fields can be filtered, or filtering
*   can be done directly on modifier bits.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
*   @see java.lang.reflect.Modifier
*   @author Robert Field
*/
extern class ModifierFilter extends java.lang.reflect.Modifier
{
	/**
	* Package private access.
	* A "pseudo-" modifier bit that can be used in the
	* constructors of this class to specify package private
	* access. This is needed since there is no Modifier.PACKAGE.
	*/
	public static var PACKAGE(default, null) : haxe.Int64;
	
	/**
	* All access modifiers.
	* A short-hand set of modifier bits that can be used in the
	* constructors of this class to specify all access modifiers,
	* Same as PRIVATE | PROTECTED | PUBLIC | PACKAGE.
	*/
	public static var ALL_ACCESS(default, null) : haxe.Int64;
	
	/**
	* Constructor - Specify a filter.
	*
	* @param   oneOf   If zero, everything passes the filter.
	*                  If non-zero, at least one of the specified
	*                  bits must be on in the modifier bits to
	*                  pass the filter.
	*/
	@:overload public function new(oneOf : haxe.Int64) : Void;
	
	/**
	* Constructor - Specify a filter.
	* For example, the filter below  will only pass synchronized
	* methods that are private or package private access and are
	* not native or static.
	* <pre>
	* ModifierFilter(  Modifier.PRIVATE | ModifierFilter.PACKAGE,
	*                  Modifier.SYNCHRONIZED,
	*                  Modifier.NATIVE | Modifier.STATIC)
	* </pre><p>
	* Each of the three arguments must either be
	* zero or the or'ed combination of the bits specified in the
	* class Modifier or this class. During filtering, these values
	* are compared against the modifier bits as follows:
	*
	* @param   oneOf   If zero, ignore this argument.
	*                  If non-zero, at least one of the bits must be on.
	* @param   must    All bits specified must be on.
	* @param   cannot  None of the bits specified can be on.
	*/
	@:overload public function new(oneOf : haxe.Int64, must : haxe.Int64, cannot : haxe.Int64) : Void;
	
	/**
	* Filter on modifier bits.
	*
	* @param   modifierBits    Bits as specified in the Modifier class
	*
	* @return                  Whether the modifierBits pass this filter.
	*/
	@:overload public function checkModifier(modifierBits : Int) : Bool;
	
	/**
	* Filter a MemberDefinition.
	*
	* @param   field           A MemberDefinition
	*
	* @return                  Whether the modifier of the field
	*                          passes this filter.
	*
	* @see sun.tools.MemberDefinition
	*/
	@:overload public function checkMember(field : sun.tools.java.MemberDefinition) : Bool;
	
	/**
	* Filter a ClassDefinition.
	*
	* @param   cdef            A ClassDefinition
	*
	* @return                  Whether the modifier of the class
	*                          passes this filter.
	*
	* @see sun.tools.ClassDefinition
	*/
	@:overload public function checkClass(cdef : sun.tools.java.ClassDefinition) : Bool;
	
	
}
