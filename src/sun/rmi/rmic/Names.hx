package sun.rmi.rmic;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Names
{
	/**
	* Return stub class name for impl class name.
	*/
	@:overload @:static @:final @:public public static function stubFor(name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Return skeleton class name for impl class name.
	*/
	@:overload @:static @:final @:public public static function skeletonFor(name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* If necessary, convert a class name to its mangled form, i.e. the
	* non-inner class name used in the binary representation of
	* inner classes.  This is necessary to be able to name inner
	* classes in the generated source code in places where the language
	* does not permit it, such as when synthetically defining an inner
	* class outside of its outer class, and for generating file names
	* corresponding to inner classes.
	*
	* Currently this mangling involves modifying the internal names of
	* inner classes by converting occurrences of ". " into "$".
	*
	* This code is taken from the "mangleInnerType" method of
	* the "sun.tools.java.Type" class; this method cannot be accessed
	* itself because it is package protected.
	*/
	@:overload @:static @:final @:public public static function mangleClass(className : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	
}
