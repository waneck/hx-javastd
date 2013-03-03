package sun.invoke.util;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class centralizes information about the JVM's linkage access control.
* @author jrose
*/
extern class VerifyAccess
{
	/**
	* Evaluate the JVM linkage rules for access to the given method
	* on behalf of a caller class which proposes to perform the access.
	* Return true if the caller class has privileges to invoke a method
	* or access a field with the given properties.
	* This requires an accessibility check of the referencing class,
	* plus an accessibility check of the member within the class,
	* which depends on the member's modifier flags.
	* <p>
	* The relevant properties include the defining class ({@code defc})
	* of the member, and its modifier flags ({@code mods}).
	* Also relevant is the class used to make the initial symbolic reference
	* to the member ({@code refc}).  If this latter class is not distinguished,
	* the defining class should be passed for both arguments ({@code defc == refc}).
	* <h3>JVM Specification, 5.4.4 "Access Control"</h3>
	* A field or method R is accessible to a class or interface D if
	* and only if any of the following conditions is true:<ul>
	* <li>R is public.
	* <li>R is protected and is declared in a class C, and D is either
	*     a subclass of C or C itself.  Furthermore, if R is not
	*     static, then the symbolic reference to R must contain a
	*     symbolic reference to a class T, such that T is either a
	*     subclass of D, a superclass of D or D itself.
	* <li>R is either protected or has default access (that is,
	*     neither public nor protected nor private), and is declared
	*     by a class in the same runtime package as D.
	* <li>R is private and is declared in D.
	* </ul>
	* This discussion of access control omits a related restriction
	* on the target of a protected field access or method invocation
	* (the target must be of class D or a subtype of D). That
	* requirement is checked as part of the verification process
	* (5.4.1); it is not part of link-time access control.
	* @param refc the class used in the symbolic reference to the proposed member
	* @param defc the class in which the proposed member is actually defined
	* @param mods modifier flags for the proposed member
	* @param lookupClass the class for which the access check is being made
	* @return true iff the the accessing class can access such a member
	*/
	@:overload @:public @:static public static function isMemberAccessible(refc : Class<Dynamic>, defc : Class<Dynamic>, mods : Int, lookupClass : Class<Dynamic>, allowedModes : Int) : Bool;
	
	/**
	* Evaluate the JVM linkage rules for access to the given class on behalf of caller.
	* <h3>JVM Specification, 5.4.4 "Access Control"</h3>
	* A class or interface C is accessible to a class or interface D
	* if and only if either of the following conditions are true:<ul>
	* <li>C is public.
	* <li>C and D are members of the same runtime package.
	* </ul>
	* @param refc the symbolic reference class to which access is being checked (C)
	* @param lookupClass the class performing the lookup (D)
	*/
	@:overload @:public @:static public static function isClassAccessible(refc : Class<Dynamic>, lookupClass : Class<Dynamic>, allowedModes : Int) : Bool;
	
	/**
	* Test if two classes have the same class loader and package qualifier.
	* @param class1
	* @param class2
	* @return whether they are in the same package
	*/
	@:overload @:public @:static public static function isSamePackage(class1 : Class<Dynamic>, class2 : Class<Dynamic>) : Bool;
	
	/** Return the package name for this class.
	*/
	@:overload @:public @:static public static function getPackageName(cls : Class<Dynamic>) : String;
	
	/**
	* Test if two classes are defined as part of the same package member (top-level class).
	* If this is true, they can share private access with each other.
	* @param class1
	* @param class2
	* @return whether they are identical or nested together
	*/
	@:overload @:public @:static public static function isSamePackageMember(class1 : Class<Dynamic>, class2 : Class<Dynamic>) : Bool;
	
	/**
	* Is the class loader of parentClass identical to, or an ancestor of,
	* the class loader of childClass?
	* @param parentClass
	* @param childClass
	* @return whether parentClass precedes or equals childClass in class loader order
	*/
	@:overload @:public @:static public static function classLoaderIsAncestor(parentClass : Class<Dynamic>, childClass : Class<Dynamic>) : Bool;
	
	
}
