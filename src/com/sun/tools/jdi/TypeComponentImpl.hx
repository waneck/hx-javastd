package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeComponentImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.TypeComponent
{
	@:overload @:public public function name() : String;
	
	@:overload @:public public function signature() : String;
	
	@:overload @:public public function genericSignature() : String;
	
	@:overload @:public public function modifiers() : Int;
	
	@:overload @:public public function declaringType() : com.sun.jdi.ReferenceType;
	
	@:overload @:public public function isStatic() : Bool;
	
	@:overload @:public public function isFinal() : Bool;
	
	@:overload @:public public function isPrivate() : Bool;
	
	@:overload @:public public function isPackagePrivate() : Bool;
	
	@:overload @:public public function isProtected() : Bool;
	
	@:overload @:public public function isPublic() : Bool;
	
	@:overload @:public public function isSynthetic() : Bool;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	
}
