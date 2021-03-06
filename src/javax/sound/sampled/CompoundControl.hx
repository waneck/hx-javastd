package javax.sound.sampled;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* A <code>CompoundControl</code>, such as a graphic equalizer, provides control
* over two or more related properties, each of which is itself represented as
* a <code>Control</code>.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) extern class CompoundControl extends javax.sound.sampled.Control
{
	/**
	* Constructs a new compound control object with the given parameters.
	*
	* @param type the type of control represented this compound control object
	* @param memberControls the set of member controls
	*/
	@:overload @:protected private function new(type : javax.sound.sampled.Control.Control_Type, memberControls : java.NativeArray<javax.sound.sampled.Control>) : Void;
	
	/**
	* Returns the set of member controls that comprise the compound control.
	* @return the set of member controls.
	*/
	@:overload @:public public function getMemberControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	/**
	* Provides a string representation of the control
	* @return a string description
	*/
	@:overload @:public override public function toString() : String;
	
	
}
/**
* An instance of the <code>CompoundControl.Type</code> inner class identifies one kind of
* compound control.  Static instances are provided for the
* common types.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) @:native('javax$sound$sampled$CompoundControl$Type') extern class CompoundControl_Type extends javax.sound.sampled.Control.Control_Type
{
	/**
	* Constructs a new compound control type.
	* @param name  the name of the new compound control type
	*/
	@:overload @:protected override private function new(name : String) : Void;
	
	
}
