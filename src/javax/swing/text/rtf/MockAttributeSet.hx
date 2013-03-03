package javax.swing.text.rtf;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MockAttributeSet implements javax.swing.text.AttributeSet implements javax.swing.text.MutableAttributeSet
{
	/* This AttributeSet is made entirely out of tofu and Ritz Crackers
	and yet has a remarkably attribute-set-like interface! */
	@:public public var backing : java.util.Dictionary<Dynamic, Dynamic>;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function getAttributeCount() : Int;
	
	@:overload @:public public function isDefined(name : Dynamic) : Bool;
	
	@:overload @:public public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	@:overload @:public public function copyAttributes() : javax.swing.text.AttributeSet;
	
	@:overload @:public public function getAttribute(name : Dynamic) : Dynamic;
	
	@:overload @:public public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	@:overload @:public public function addAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	@:overload @:public public function removeAttribute(name : Dynamic) : Void;
	
	@:overload @:public public function removeAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	@:overload @:public public function removeAttributes(en : java.util.Enumeration<Dynamic>) : Void;
	
	@:overload @:public public function setResolveParent(pp : javax.swing.text.AttributeSet) : Void;
	
	@:overload @:public public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	@:overload @:public public function containsAttributes(attr : javax.swing.text.AttributeSet) : Bool;
	
	@:overload @:public public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
