package sun.tools.jstat;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* An Expression subclass that describes the variable operands of an
* expression. Objects of this type are always leaves of an expression tree.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class Identifier extends sun.tools.jstat.Expression
{
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setValue(value : Dynamic) : Void;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function isResolved() : Bool;
	
	@:overload @:public override public function toString() : String;
	
	
}
